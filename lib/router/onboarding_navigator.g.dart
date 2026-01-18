// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_navigator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(onboardingNavigator)
const onboardingNavigatorProvider = OnboardingNavigatorProvider._();

final class OnboardingNavigatorProvider
    extends
        $FunctionalProvider<
          OnboardingNavigator,
          OnboardingNavigator,
          OnboardingNavigator
        >
    with $Provider<OnboardingNavigator> {
  const OnboardingNavigatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingNavigatorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingNavigatorHash();

  @$internal
  @override
  $ProviderElement<OnboardingNavigator> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OnboardingNavigator create(Ref ref) {
    return onboardingNavigator(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnboardingNavigator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnboardingNavigator>(value),
    );
  }
}

String _$onboardingNavigatorHash() =>
    r'b3b6f27ffd032190307f3ee1b9fcfcbd771e35a4';
