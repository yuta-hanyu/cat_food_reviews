// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnboardingViewModel)
const onboardingViewModelProvider = OnboardingViewModelProvider._();

final class OnboardingViewModelProvider
    extends $NotifierProvider<OnboardingViewModel, OnboardingUiState> {
  const OnboardingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingViewModelHash();

  @$internal
  @override
  OnboardingViewModel create() => OnboardingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnboardingUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnboardingUiState>(value),
    );
  }
}

String _$onboardingViewModelHash() =>
    r'f5c93bafe58228260ee48f419caf2d7c31dda8dc';

abstract class _$OnboardingViewModel extends $Notifier<OnboardingUiState> {
  OnboardingUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OnboardingUiState, OnboardingUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OnboardingUiState, OnboardingUiState>,
              OnboardingUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
