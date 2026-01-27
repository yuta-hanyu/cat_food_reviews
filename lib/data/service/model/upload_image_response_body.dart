/// 画像アップロードレスポンスボディ
class UploadImageResponseBody {
  factory UploadImageResponseBody.fromJson(Map<String, dynamic> json) =>
      UploadImageResponseBody(
        analysisId: json['analysis_id'] as String,
        status: json['status'] as String,
        analysisResult: json['analysis_result'] != null
            ? AnalysisResult.fromJson(
                json['analysis_result'] as Map<String, dynamic>,
              )
            : null,
        message: json['message'] as String,
      );
  const UploadImageResponseBody({
    required this.analysisId,
    required this.status,
    required this.analysisResult,
    required this.message,
  });

  /// 分析結果ID
  final String analysisId;

  /// 分析ステータス
  final String status;

  /// 分析結果データ
  final AnalysisResult? analysisResult;

  /// メッセージ
  final String message;

  Map<String, dynamic> toJson() => {
    'analysis_id': analysisId,
    'status': status,
    'analysis_result': analysisResult?.toJson(),
    'message': message,
  };
}

/// 分析結果
class AnalysisResult {
  factory AnalysisResult.fromJson(Map<String, dynamic> json) => AnalysisResult(
    score: (json['score'] as num).toDouble(),
    ingredients: (json['ingredients'] as List<dynamic>)
        .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
        .toList(),
    qualityRating: json['quality_rating'] as String,
    recommendationLevel: json['recommendation_level'] as int,
    comment: json['comment'] as String?,
  );
  const AnalysisResult({
    required this.score,
    required this.ingredients,
    required this.qualityRating,
    required this.recommendationLevel,
    required this.comment,
  });

  /// 分析スコア
  final double score;

  /// 検出された成分リスト
  final List<Ingredient> ingredients;

  /// 品質評価
  final String qualityRating;

  /// 推奨度
  final int recommendationLevel;

  /// コメント
  final String? comment;

  Map<String, dynamic> toJson() => {
    'score': score,
    'ingredients': ingredients.map((e) => e.toJson()).toList(),
    'quality_rating': qualityRating,
    'recommendation_level': recommendationLevel,
    'comment': comment,
  };
}

/// 成分
class Ingredient {
  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
    name: json['name'] as String,
    confidence: (json['confidence'] as num).toDouble(),
    category: json['category'] as String,
    healthImpact: json['health_impact'] as String,
  );
  const Ingredient({
    required this.name,
    required this.confidence,
    required this.category,
    required this.healthImpact,
  });

  /// 成分名
  final String name;

  /// 信頼度
  final double confidence;

  /// カテゴリー
  final String category;

  /// 健康への影響
  final String healthImpact;

  Map<String, dynamic> toJson() => {
    'name': name,
    'confidence': confidence,
    'category': category,
    'health_impact': healthImpact,
  };
}
