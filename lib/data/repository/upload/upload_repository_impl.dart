import 'dart:io';
import 'package:cat_food_reviews/data/service/api/cat_food_api_client.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_request_body.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_response_body.dart';
import 'package:cat_food_reviews/data/common/result/result.dart';
import 'package:cat_food_reviews/data/common/result/error/repository_error.dart';
import 'package:cat_food_reviews/data/common/result/future_result_extension.dart';
import 'package:cat_food_reviews/data/repository/upload/upload_repository.dart';

class UploadRepositoryImpl implements UploadRepository {
  UploadRepositoryImpl({required CatFoodApiClient apiClient})
    : _apiClient = apiClient;

  final CatFoodApiClient _apiClient;

  @override
  Future<Result<UploadImageResponseBody, RepositoryError>> uploadImage(
    File imageFile,
  ) async {
    const requestBody = UploadImageRequestBody(
      description: 'Cat food ingredients image for analysis',
    );

    final result = await _apiClient.upload
        .uploadImageForAnalysis(imageFile, requestBody)
        .toResult();

    return result;
  }
}
