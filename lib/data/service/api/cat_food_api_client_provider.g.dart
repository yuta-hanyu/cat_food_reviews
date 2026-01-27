// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_food_api_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// CatFoodApiClientのRiverpodプロバイダー

@ProviderFor(catFoodApiClient)
const catFoodApiClientProvider = CatFoodApiClientProvider._();

/// CatFoodApiClientのRiverpodプロバイダー

final class CatFoodApiClientProvider
    extends
        $FunctionalProvider<
          CatFoodApiClient,
          CatFoodApiClient,
          CatFoodApiClient
        >
    with $Provider<CatFoodApiClient> {
  /// CatFoodApiClientのRiverpodプロバイダー
  const CatFoodApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catFoodApiClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catFoodApiClientHash();

  @$internal
  @override
  $ProviderElement<CatFoodApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CatFoodApiClient create(Ref ref) {
    return catFoodApiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatFoodApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatFoodApiClient>(value),
    );
  }
}

String _$catFoodApiClientHash() => r'7b994e6bfc58d43851812130d9387281d07dc0bd';
