import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/review/review_ui_state.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';

part 'review_view_model.g.dart';

@riverpod
class ReviewViewModel extends _$ReviewViewModel {
  @override
  ReviewUiState build() {
    return const ReviewUiState();
  }

  /// アップロード結果データを設定
  void setReviewData(ReviewAnalysis reviewData, {String? imagePath}) {
    state = state.copyWith(
      reviewData: reviewData,
      imagePath: imagePath,
      isLoading: false,
      errorMessage: null,
    );
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
