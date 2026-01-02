import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_view_model.g.dart';

@riverpod
class OnboardingViewModel extends _$OnboardingViewModel {
  @override
  OnboardingState build() {
    return const OnboardingState();
  }

  void startAnalysis() {
    state = state.copyWith(isAnalyzing: true);

    // TODO: Navigate to camera screen or analysis screen
    // This will be implemented when we add navigation

    Future.delayed(const Duration(seconds: 1), () {
      state = state.copyWith(isAnalyzing: false);
    });
  }
}

class OnboardingState {
  const OnboardingState({this.isAnalyzing = false});

  final bool isAnalyzing;

  OnboardingState copyWith({bool? isAnalyzing}) {
    return OnboardingState(isAnalyzing: isAnalyzing ?? this.isAnalyzing);
  }
}
