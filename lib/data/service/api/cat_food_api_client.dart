import 'package:dio/dio.dart';
import 'package:cat_food_reviews/data/service/api/upload/upload_client.dart';

/// Cat Food Reviews APIのメインクライアント
class CatFoodApiClient {
  CatFoodApiClient(Dio dio, {String? baseUrl}) : _dio = dio, _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  UploadClient? _upload;

  UploadClient get upload => _upload ??= UploadClient(_dio, baseUrl: _baseUrl);
}
