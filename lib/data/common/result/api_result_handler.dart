import 'package:dio/dio.dart';
import 'package:cat_food_reviews/data/common/result/result.dart';
import 'package:cat_food_reviews/data/common/result/error/repository_error.dart';

/// APIレスポンスをResult型に変換する共通処理
/// すべてのAPIレスポンスを統一的に`Result<T, RepositoryError>`に変換
class ApiResultHandler {
  /// API呼び出しをResult型でラップする
  /// DioExceptionを適切なRepositoryErrorに変換し、型安全なエラーハンドリングを提供
  static Future<Result<T, RepositoryError>> handle<T>(Future<T> apiCall) async {
    try {
      final response = await apiCall;
      return Result.success(response);
    } on DioException catch (e) {
      return Result.failure(_mapDioExceptionToRepositoryError(e));
    } catch (e) {
      // Dio以外の予期しない例外
      return Result.failure(
        UnexpectedError('Unexpected error during API call', cause: e),
      );
    }
  }

  /// DioExceptionをRepositoryErrorに変換
  static RepositoryError _mapDioExceptionToRepositoryError(DioException e) {
    // HTTPステータスコードによる分類
    switch (e.response?.statusCode) {
      // 4xx: クライアントエラー (主にドメインエラー)
      case 400:
        return ValidationError('Bad Request: ${e.message}');
      case 401:
        return ApiError('Unauthorized: ${e.message}', 401);
      case 403:
        return ApiError('Forbidden: ${e.message}', 403);
      case 404:
        return NotFoundError('Resource not found: ${e.message}');

      // 5xx: サーバーエラー (システムエラー)
      case 500:
      case 502:
      case 503:
      case 504:
        return const ServerError();

      default:
        // HTTPレスポンスが無い場合（ネットワークエラーなど）
        if (e.response == null) {
          switch (e.type) {
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
            case DioExceptionType.connectionError:
              return const NetworkError();
            case DioExceptionType.cancel:
              return const UnexpectedError('リクエストがキャンセルされました');
            default:
              return UnexpectedError('ネットワークエラーが発生しました', cause: e.error);
          }
        }
        // その他のHTTPエラー
        return ApiError('API Error: ${e.message}', e.response?.statusCode ?? 0);
    }
  }
}
