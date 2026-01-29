import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';

part 'review_ui_state.freezed.dart';

@freezed
sealed class ReviewUiState with _$ReviewUiState {
  const factory ReviewUiState({
    @Default(false) bool isLoading,
    ReviewAnalysis? reviewData,
    String? imagePath,
    String? errorMessage,
  }) = _ReviewUiState;
}
