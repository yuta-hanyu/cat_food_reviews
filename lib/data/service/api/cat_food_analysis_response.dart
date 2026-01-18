import 'package:cat_food_reviews/data/model/cat_food_analysis.dart';

/// API レスポンス用のデータモデル
class CatFoodAnalysisResponse {
  /// JSON からインスタンスを生成
  factory CatFoodAnalysisResponse.fromJson(Map<String, dynamic> json) {
    return CatFoodAnalysisResponse(
      id: json['id'] as String,
      imagePath: json['image_path'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      safetyLevel: json['safety_level'] as String,
      nutritionScore: json['nutrition_score'] != null
          ? NutritionScoreResponse.fromJson(
              json['nutrition_score'] as Map<String, dynamic>,
            )
          : null,
      safeIngredients: (json['safe_ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      cautionIngredients: (json['caution_ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dangerousIngredients: (json['dangerous_ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      aiAnalysisText: json['ai_analysis_text'] as String,
      createdAt: json['created_at'] as String,
    );
  }

  const CatFoodAnalysisResponse({
    required this.id,
    required this.imagePath,
    required this.ingredients,
    required this.safetyLevel,
    this.nutritionScore,
    required this.safeIngredients,
    required this.cautionIngredients,
    required this.dangerousIngredients,
    required this.aiAnalysisText,
    required this.createdAt,
  });

  final String id;
  final String imagePath;
  final List<String> ingredients;
  final String safetyLevel; // API からは文字列で受信
  final NutritionScoreResponse? nutritionScore;
  final List<String> safeIngredients;
  final List<String> cautionIngredients;
  final List<String> dangerousIngredients;
  final String aiAnalysisText;
  final String createdAt; // API からは ISO 8601 文字列で受信

  /// JSON に変換
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_path': imagePath,
      'ingredients': ingredients,
      'safety_level': safetyLevel,
      'nutrition_score': nutritionScore?.toJson(),
      'safe_ingredients': safeIngredients,
      'caution_ingredients': cautionIngredients,
      'dangerous_ingredients': dangerousIngredients,
      'ai_analysis_text': aiAnalysisText,
      'created_at': createdAt,
    };
  }

  /// ドメインモデルに変換
  CatFoodAnalysis toDomain() {
    return CatFoodAnalysis(
      id: id,
      imagePath: imagePath,
      ingredients: ingredients,
      safetyLevel: _parseSafetyLevel(safetyLevel),
      nutritionScore: nutritionScore?.toDomain(),
      safeIngredients: safeIngredients,
      cautionIngredients: cautionIngredients,
      dangerousIngredients: dangerousIngredients,
      aiAnalysisText: aiAnalysisText,
      createdAt: DateTime.parse(createdAt),
    );
  }

  /// 文字列を SafetyLevel enum に変換
  SafetyLevel _parseSafetyLevel(String level) {
    switch (level.toLowerCase()) {
      case 'safe':
        return SafetyLevel.safe;
      case 'caution':
        return SafetyLevel.caution;
      case 'danger':
        return SafetyLevel.danger;
      default:
        return SafetyLevel.caution; // デフォルトは注意レベル
    }
  }
}

/// 栄養スコア レスポンスモデル
class NutritionScoreResponse {
  /// JSON からインスタンスを生成
  factory NutritionScoreResponse.fromJson(Map<String, dynamic> json) {
    return NutritionScoreResponse(
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbohydrate: (json['carbohydrate'] as num).toDouble(),
      fiber: (json['fiber'] as num).toDouble(),
      moisture: (json['moisture'] as num).toDouble(),
      ash: (json['ash'] as num).toDouble(),
      overall: (json['overall'] as num).toDouble(),
    );
  }

  const NutritionScoreResponse({
    required this.protein,
    required this.fat,
    required this.carbohydrate,
    required this.fiber,
    required this.moisture,
    required this.ash,
    required this.overall,
  });

  final double protein;
  final double fat;
  final double carbohydrate;
  final double fiber;
  final double moisture;
  final double ash;
  final double overall;

  /// JSON に変換
  Map<String, dynamic> toJson() {
    return {
      'protein': protein,
      'fat': fat,
      'carbohydrate': carbohydrate,
      'fiber': fiber,
      'moisture': moisture,
      'ash': ash,
      'overall': overall,
    };
  }

  /// ドメインモデルに変換
  NutritionScore toDomain() {
    return NutritionScore(
      protein: protein,
      fat: fat,
      carbohydrate: carbohydrate,
      fiber: fiber,
      moisture: moisture,
      ash: ash,
      overall: overall,
    );
  }
}
