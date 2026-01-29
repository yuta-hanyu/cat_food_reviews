import 'dart:io';
import 'package:dio/dio.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_request_body.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_response_body.dart';

/// アップロード用APIクライアント
class UploadClient {
  UploadClient(this._dio, {String? baseUrl}) : _baseUrl = baseUrl;

  // TODO
  final Dio _dio; // ignore: unused_field
  final String? _baseUrl; // ignore: unused_field

  /// 画像をアップロードしてAnalysis結果を取得
  Future<UploadImageResponseBody> uploadImageForAnalysis(
    File imageFile,
    UploadImageRequestBody requestBody,
  ) async {
    // 仮実装: サンプルデータを返す

    // サンプルレスポンスデータ（Service層の責任）
    return const UploadImageResponseBody(
      overallScore: 92,
      oneLiner: 'とっても優秀ニャ！',
      overallEvaluation:
          '全体的に栄養バランスが非常に整っています。第一原料に高品質なタンパク質が使用されており、添加物も抑えられているため、毎日の主食として安心です。',
      goodPoints: [
        '高品質タンパク源: 新鮮なチキンを贅沢に使用しており、筋肉維持に欠かせないアミノ酸スコアが高いです。',
        'クリーンな原材料: 人工保存料や合成着色料が一切含まれておらず、内臓への負担が少ない安心設計です。',
      ],
      badPoints: ['炭水化物の含有量: 炭水化物がやや多めで、運動量の少ない室内猫には体重管理に注意が必要です。'],
      nutrition: NutritionAnalysisDto(
        protein: NutritionItemDto(
          value: 32.0,
          rating: '適正',
          comment: '筋肉の維持に理想的な含有量です。',
        ),
        fat: NutritionItemDto(
          value: 18.0,
          rating: 'やや高め',
          comment: '避妊去勢後の子には少し多いかも。',
        ),
        fiber: NutritionItemDto(
          value: 4.5,
          rating: '適正',
          comment: '毛玉の排出をサポートする量です。',
        ),
        carbohydrate: NutritionItemDto(
          value: 35.0,
          rating: '高め',
          comment: '猫の本来の食事に比べると多めです。',
        ),
      ),
    );

    // 実際のAPI呼び出し（コメントアウト）
    /*
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imageFile.path,
        filename: 'cat_food_image.jpg',
      ),
      'description': requestBody.description,
    });

    final response = await _dio.post<Map<String, dynamic>>(
      '${_baseUrl ?? ''}/post',
      data: formData,
    );

    print(response);

    return UploadImageResponseBody.fromJson(response.data!);
    */
  }
}
