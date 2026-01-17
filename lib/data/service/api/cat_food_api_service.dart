import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/data/service/api/api_client.dart';
import 'package:cat_food_reviews/data/service/api/cat_food_analysis_response.dart';
import 'package:cat_food_reviews/ui/onboarding/model/cat_food_analysis.dart';

/// キャットフード分析APIサービス
final catFoodApiServiceProvider = Provider<CatFoodApiService>((ref) {
  final dio = ref.read(apiClientProvider);
  return CatFoodApiService(dio);
});

class CatFoodApiService {
  const CatFoodApiService(this._dio);

  final Dio _dio;

  /// 画像からキャットフードを分析する
  ///
  /// [imagePath] 分析する画像のファイルパス
  /// 戻り値: 分析結果
  /// 例外: [ApiException] API通信エラー
  Future<CatFoodAnalysis> analyzeFood(String imagePath) async {
    try {
      // マルチパートフォームデータの作成
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          imagePath,
          filename: imagePath.split('/').last,
        ),
        'analysis_type': 'comprehensive', // 包括的分析
        'language': 'ja', // 日本語での結果
      });

      final response = await _dio.post<Map<String, dynamic>>(
        '/cat-food/analyze',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      if (response.statusCode == 200) {
        final responseData = CatFoodAnalysisResponse.fromJson(
          response.data as Map<String, dynamic>,
        );
        return responseData.toDomain(); // レスポンスモデルからドメインモデルに変換
      } else {
        throw ServerException('サーバーから予期しないレスポンスが返されました', response.statusCode);
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw const NetworkException('予期しないエラーが発生しました');
    }
  }

  /// 分析履歴を取得する
  ///
  /// [limit] 取得件数の上限
  /// 戻り値: 分析履歴のリスト
  Future<List<CatFoodAnalysis>> getAnalysisHistory({int limit = 10}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/cat-food/history',
        queryParameters: {
          'limit': limit,
          'sort': 'created_at',
          'order': 'desc',
        },
      );

      if (response.statusCode == 200) {
        final responseMap = response.data as Map<String, dynamic>;
        final data = responseMap['analyses'] as List<dynamic>? ?? <dynamic>[];
        return data
            .map(
              (json) => CatFoodAnalysisResponse.fromJson(
                json as Map<String, dynamic>,
              ).toDomain(),
            )
            .toList();
      } else {
        throw ServerException('履歴の取得に失敗しました', response.statusCode);
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw const NetworkException('履歴の取得でエラーが発生しました');
    }
  }

  /// 分析結果を保存する
  ///
  /// [analysis] 保存する分析結果
  /// 戻り値: 保存された分析結果のID
  Future<String> saveAnalysis(CatFoodAnalysis analysis) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/cat-food/save',
        data: {
          'image_path': analysis.imagePath,
          'ingredients': analysis.ingredients,
          'safety_level': analysis.safetyLevel.toString(),
          'nutrition_score': {
            'protein': analysis.nutritionScore?.protein,
            'fat': analysis.nutritionScore?.fat,
            'carbohydrate': analysis.nutritionScore?.carbohydrate,
            'fiber': analysis.nutritionScore?.fiber,
            'moisture': analysis.nutritionScore?.moisture,
            'ash': analysis.nutritionScore?.ash,
            'overall': analysis.nutritionScore?.overall,
          },
          'safe_ingredients': analysis.safeIngredients,
          'caution_ingredients': analysis.cautionIngredients,
          'dangerous_ingredients': analysis.dangerousIngredients,
          'ai_analysis_text': analysis.aiAnalysisText,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final responseMap = response.data as Map<String, dynamic>;
        return responseMap['id'] as String;
      } else {
        throw ServerException('分析結果の保存に失敗しました', response.statusCode);
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw const NetworkException('保存処理でエラーが発生しました');
    }
  }

  /// DioExceptionをApiExceptionに変換
  ApiException _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException('通信がタイムアウトしました');

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final responseData = e.response?.data as Map<String, dynamic>?;
        final message = responseData?['message'] as String? ?? 'エラーが発生しました';

        if (statusCode != null && statusCode >= 400 && statusCode < 500) {
          return ClientException(message, statusCode);
        } else {
          return ServerException(message, statusCode);
        }

      case DioExceptionType.cancel:
        return const NetworkException('リクエストがキャンセルされました');

      case DioExceptionType.connectionError:
        return const NetworkException('インターネット接続を確認してください');

      default:
        return const NetworkException('予期しないネットワークエラーが発生しました');
    }
  }
}
