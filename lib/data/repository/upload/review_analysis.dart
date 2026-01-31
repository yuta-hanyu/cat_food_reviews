/// キャットフード分析結果のドメインモデル
class ReviewAnalysis {
  const ReviewAnalysis({
    required this.overallScore,
    required this.oneLiner,
    required this.overallEvaluation,
    required this.goodPoints,
    required this.badPoints,
    required this.nutrition,
  });

  final int overallScore;
  final String oneLiner;
  final String overallEvaluation;
  final List<ReviewPoint> goodPoints;
  final List<ReviewPoint> badPoints;
  final NutritionAnalysis nutrition;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReviewAnalysis &&
        other.overallScore == overallScore &&
        other.oneLiner == oneLiner &&
        other.overallEvaluation == overallEvaluation &&
        _listEquals(other.goodPoints, goodPoints) &&
        _listEquals(other.badPoints, badPoints) &&
        other.nutrition == nutrition;
  }

  @override
  int get hashCode => Object.hash(
    overallScore,
    oneLiner,
    overallEvaluation,
    goodPoints,
    badPoints,
    nutrition,
  );

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}

/// 栄養成分分析
class NutritionAnalysis {
  const NutritionAnalysis({
    required this.protein,
    required this.fat,
    required this.fiber,
    required this.carbohydrate,
  });

  final NutritionItem protein;
  final NutritionItem fat;
  final NutritionItem fiber;
  final NutritionItem carbohydrate;
}

/// 栄養成分項目
class NutritionItem {
  const NutritionItem({
    required this.value,
    required this.rating,
    required this.comment,
  });

  final double value;
  final String rating;
  final String comment;
}

/// レビューポイント（良い点・気になる点）
class ReviewPoint {
  const ReviewPoint({required this.title, required this.content});

  final String title;
  final String content;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReviewPoint &&
        other.title == title &&
        other.content == content;
  }

  @override
  int get hashCode => Object.hash(title, content);
}
