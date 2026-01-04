// Future implementation - currently commented out due to build issues
// This file will be used for AI analysis functionality in future versions

// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'cat_food_analysis.freezed.dart';
// part 'cat_food_analysis.g.dart';
//
// @freezed
// class CatFoodAnalysis with _$CatFoodAnalysis {
//   const factory CatFoodAnalysis({
//     required String id,
//     required String imagePath,
//     required List<String> ingredients,
//     required SafetyLevel safetyLevel,
//     required NutritionScore nutritionScore,
//     required List<String> safeIngredients,
//     required List<String> cautionIngredients,
//     required List<String> dangerousIngredients,
//     required String aiAnalysisText,
//     required DateTime createdAt,
//   }) = _CatFoodAnalysis;
//
//   factory CatFoodAnalysis.fromJson(Map<String, dynamic> json) =>
//       _$CatFoodAnalysisFromJson(json);
// }
//
// @freezed
// class NutritionScore with _$NutritionScore {
//   const factory NutritionScore({
//     required double protein,
//     required double fat,
//     required double carbohydrate,
//     required double fiber,
//     required double moisture,
//     required double ash,
//     required double overall,
//   }) = _NutritionScore;
//
//   factory NutritionScore.fromJson(Map<String, dynamic> json) =>
//       _$NutritionScoreFromJson(json);
// }

enum SafetyLevel { safe, caution, danger }

extension SafetyLevelExtension on SafetyLevel {
  String get displayName {
    switch (this) {
      case SafetyLevel.safe:
        return '安全';
      case SafetyLevel.caution:
        return '注意';
      case SafetyLevel.danger:
        return '危険';
    }
  }

  String get description {
    switch (this) {
      case SafetyLevel.safe:
        return '猫ちゃんにとって安全な食材です';
      case SafetyLevel.caution:
        return '与える量に注意が必要です';
      case SafetyLevel.danger:
        return '猫ちゃんには与えないでください';
    }
  }
}
