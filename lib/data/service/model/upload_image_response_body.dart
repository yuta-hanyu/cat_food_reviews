/// 画像アップロードレスポンスボディ
class UploadImageResponseBody {
  factory UploadImageResponseBody.fromJson(Map<String, dynamic> json) =>
      UploadImageResponseBody(
        overallScore: json['overall_score'] as int,
        oneLiner: json['one_liner'] as String,
        overallEvaluation: json['overall_evaluation'] as String,
        goodPoints: (json['good_points'] as List<dynamic>)
            .map((e) => GoodPoint.fromJson(e as Map<String, dynamic>))
            .toList(),
        badPoints: (json['bad_points'] as List<dynamic>)
            .map((e) => BadPoint.fromJson(e as Map<String, dynamic>))
            .toList(),
        nutrition: NutritionAnalysisDto.fromJson(
          json['nutrition'] as Map<String, dynamic>,
        ),
      );

  const UploadImageResponseBody({
    required this.overallScore,
    required this.oneLiner,
    required this.overallEvaluation,
    required this.goodPoints,
    required this.badPoints,
    required this.nutrition,
  });

  /// 総合スコア
  final int overallScore;

  /// 一言コメント
  final String oneLiner;

  /// 総合評価
  final String overallEvaluation;

  /// 良いポイント
  final List<GoodPoint> goodPoints;

  /// 悪いポイント
  final List<BadPoint> badPoints;

  /// 栄養成分分析
  final NutritionAnalysisDto nutrition;

  Map<String, dynamic> toJson() => {
    'overall_score': overallScore,
    'one_liner': oneLiner,
    'overall_evaluation': overallEvaluation,
    'good_points': goodPoints.map((e) => e.toJson()).toList(),
    'bad_points': badPoints.map((e) => e.toJson()).toList(),
    'nutrition': nutrition.toJson(),
  };
}

/// 良いポイント
class GoodPoint {
  factory GoodPoint.fromJson(Map<String, dynamic> json) => GoodPoint(
    title: json['title'] as String,
    content: json['content'] as String,
  );

  const GoodPoint({required this.title, required this.content});

  /// タイトル
  final String title;

  /// 内容
  final String content;

  Map<String, dynamic> toJson() => {'title': title, 'content': content};
}

/// 悪いポイント
class BadPoint {
  factory BadPoint.fromJson(Map<String, dynamic> json) => BadPoint(
    title: json['title'] as String,
    content: json['content'] as String,
  );

  const BadPoint({required this.title, required this.content});

  /// タイトル
  final String title;

  /// 内容
  final String content;

  Map<String, dynamic> toJson() => {'title': title, 'content': content};
}

/// 栄養成分分析（DTO）
class NutritionAnalysisDto {
  factory NutritionAnalysisDto.fromJson(Map<String, dynamic> json) =>
      NutritionAnalysisDto(
        protein: NutritionItemDto.fromJson(
          json['protein'] as Map<String, dynamic>,
        ),
        fat: NutritionItemDto.fromJson(json['fat'] as Map<String, dynamic>),
        fiber: NutritionItemDto.fromJson(json['fiber'] as Map<String, dynamic>),
        carbohydrate: NutritionItemDto.fromJson(
          json['carbohydrate'] as Map<String, dynamic>,
        ),
      );

  const NutritionAnalysisDto({
    required this.protein,
    required this.fat,
    required this.fiber,
    required this.carbohydrate,
  });

  /// タンパク質
  final NutritionItemDto protein;

  /// 脂質
  final NutritionItemDto fat;

  /// 食物繊維
  final NutritionItemDto fiber;

  /// 炭水化物
  final NutritionItemDto carbohydrate;

  Map<String, dynamic> toJson() => {
    'protein': protein.toJson(),
    'fat': fat.toJson(),
    'fiber': fiber.toJson(),
    'carbohydrate': carbohydrate.toJson(),
  };
}

/// 栄養素項目（DTO）
class NutritionItemDto {
  factory NutritionItemDto.fromJson(Map<String, dynamic> json) =>
      NutritionItemDto(
        value: (json['value'] as num).toDouble(),
        rating: json['rating'] as String,
        comment: json['comment'] as String,
      );

  const NutritionItemDto({
    required this.value,
    required this.rating,
    required this.comment,
  });

  /// 数値
  final double value;

  /// 評価
  final String rating;

  /// コメント
  final String comment;

  Map<String, dynamic> toJson() => {
    'value': value,
    'rating': rating,
    'comment': comment,
  };
}
