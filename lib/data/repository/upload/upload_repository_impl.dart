import 'dart:io';
import 'package:cat_food_reviews/data/service/api/cat_food_api_client.dart';
import 'package:cat_food_reviews/data/service/model/upload_image_request_body.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';
import 'package:cat_food_reviews/data/common/result/result.dart';
import 'package:cat_food_reviews/data/common/result/error/repository_error.dart';
import 'package:cat_food_reviews/data/common/result/future_result_extension.dart';
import 'package:cat_food_reviews/data/repository/upload/upload_repository.dart';

class UploadRepositoryImpl implements UploadRepository {
  UploadRepositoryImpl({required CatFoodApiClient apiClient})
    : _apiClient = apiClient;

  final CatFoodApiClient _apiClient;

  @override
  Future<Result<ReviewAnalysis, RepositoryError>> uploadImage(
    File imageFile,
  ) async {
    const requestBody = UploadImageRequestBody();

    final result = await _apiClient.upload
        .uploadImageForAnalysis(imageFile, requestBody)
        .toResult();

    return result.when(
      success: (dto) {
        // DTOからドメインモデルに変換（Repository層の責任）
        final domainModel = ReviewAnalysis(
          overallScore: dto.overallScore,
          oneLiner: dto.oneLiner,
          overallEvaluation: dto.overallEvaluation,
          goodPoints: dto.goodPoints,
          badPoints: dto.badPoints,
          nutrition: NutritionAnalysis(
            protein: NutritionItem(
              value: dto.nutrition.protein.value,
              rating: dto.nutrition.protein.rating,
              comment: dto.nutrition.protein.comment,
            ),
            fat: NutritionItem(
              value: dto.nutrition.fat.value,
              rating: dto.nutrition.fat.rating,
              comment: dto.nutrition.fat.comment,
            ),
            fiber: NutritionItem(
              value: dto.nutrition.fiber.value,
              rating: dto.nutrition.fiber.rating,
              comment: dto.nutrition.fiber.comment,
            ),
            carbohydrate: NutritionItem(
              value: dto.nutrition.carbohydrate.value,
              rating: dto.nutrition.carbohydrate.rating,
              comment: dto.nutrition.carbohydrate.comment,
            ),
          ),
        );
        return Result.success(domainModel);
      },
      failure: (error) => Result.failure(error),
    );
  }
}
