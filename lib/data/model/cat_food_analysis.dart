/// キャットフード分析結果
class CatFoodAnalysis {
  const CatFoodAnalysis({
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
  final SafetyLevel safetyLevel;
  final NutritionScore? nutritionScore;
  final List<String> safeIngredients;
  final List<String> cautionIngredients;
  final List<String> dangerousIngredients;
  final String aiAnalysisText;
  final DateTime createdAt;

  /// 安全性の概要を取得
  String get safetyOverview {
    final safeCount = safeIngredients.length;
    final cautionCount = cautionIngredients.length;
    final dangerCount = dangerousIngredients.length;

    if (dangerCount > 0) {
      return '$dangerCount個の危険な成分が含まれています';
    } else if (cautionCount > 0) {
      return '$cautionCount個の注意が必要な成分が含まれています';
    } else {
      return '$safeCount個の安全な成分で構成されています';
    }
  }

  /// 全体的な推奨度を取得（0.0-1.0）
  double get recommendationScore {
    final totalIngredients = ingredients.length;
    if (totalIngredients == 0) return 0.0;

    final safeScore = safeIngredients.length / totalIngredients;
    final cautionPenalty = (cautionIngredients.length / totalIngredients) * 0.5;
    final dangerPenalty = dangerousIngredients.length / totalIngredients;

    return (safeScore - cautionPenalty - dangerPenalty).clamp(0.0, 1.0);
  }
}

/// 栄養スコア
class NutritionScore {
  const NutritionScore({
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

  /// 総合評価を取得
  String get overallRating {
    if (overall >= 0.8) return '優秀';
    if (overall >= 0.6) return '良好';
    if (overall >= 0.4) return '普通';
    if (overall >= 0.2) return '改善の余地あり';
    return '注意が必要';
  }
}

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
