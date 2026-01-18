import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_ui_state.freezed.dart';

@freezed
sealed class OnboardingUiState with _$OnboardingUiState {
  const factory OnboardingUiState({@Default(0) int currentPageIndex}) =
      _OnboardingUiState;
}
