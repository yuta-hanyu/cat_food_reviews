import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/core/analytics/analytics_service.dart';
import 'package:cat_food_reviews/core/analytics/analytics_provider.dart';
import 'package:cat_food_reviews/ui/onboarding/onboarding_ui_state.dart';
import 'package:cat_food_reviews/router/onboarding_navigator.dart';

part 'onboarding_view_model.g.dart';

@riverpod
class OnboardingViewModel extends _$OnboardingViewModel {
  late final AnalyticsService _analyticsService;
  late final OnboardingNavigator _navigator;

  @override
  OnboardingUiState build() {
    _analyticsService = ref.read(analyticsProvider);
    _navigator = ref.read(onboardingNavigatorProvider);

    return const OnboardingUiState();
  }

  /// 画面表示イベントを送信
  void logScreenView() {
    _analyticsService.logScreenView('onboarding');
  }

  /// アップロード画面に遷移する
  void goUpload() {
    _navigator.toUpload();
  }

  /// ページを変更する
  void changePage(int index) {
    state = state.copyWith(currentPageIndex: index);
  }
}
