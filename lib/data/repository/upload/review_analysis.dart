import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_analysis.freezed.dart';

/// キャットフード分析結果のドメインモデル
@freezed
class ReviewAnalysis with _$ReviewAnalysis {
  const factory ReviewAnalysis({
    required int overallScore,
    required String oneLiner,
    required String overallEvaluation,
    required List<String> goodPoints,
    required List<String> badPoints,
    required NutritionAnalysis nutrition,
  }) = _ReviewAnalysis;
}

/// 栄養成分分析
@freezed
class NutritionAnalysis with _$NutritionAnalysis {
  const factory NutritionAnalysis({
    required NutritionItem protein,
    required NutritionItem fat,
    required NutritionItem fiber,
    required NutritionItem carbohydrate,
  }) = _NutritionAnalysis;
}

/// 栄養成分項目
@freezed
class NutritionItem with _$NutritionItem {
  const factory NutritionItem({
    required double value,
    required String rating,
    required String comment,
  }) = _NutritionItem;
}