import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';

part 'review_navigation_data.freezed.dart';

/// レビュー画面への遷移時に渡すデータ
@freezed
sealed class ReviewNavigationData with _$ReviewNavigationData {
  const factory ReviewNavigationData({
    required ReviewAnalysis reviewAnalysis,
    required String imagePath,
  }) = _ReviewNavigationData;
}
