import 'dart:io';
import 'package:dio/dio.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_request_body.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_response_body.dart';

/// アップロード用APIクライアント
class UploadClient {
  UploadClient(this._dio, {String? baseUrl}) : _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  /// 画像をアップロードしてAnalysis結果を取得
  Future<UploadImageResponseBody> uploadImageForAnalysis(
    File imageFile,
    UploadImageRequestBody requestBody,
  ) async {
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
  }
}
