// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_view_modle.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UploadViewModel)
const uploadViewModelProvider = UploadViewModelProvider._();

final class UploadViewModelProvider
    extends $NotifierProvider<UploadViewModel, UploadUiState> {
  const UploadViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadViewModelHash();

  @$internal
  @override
  UploadViewModel create() => UploadViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadUiState>(value),
    );
  }
}

String _$uploadViewModelHash() => r'9ff94335e6308c0f43e1937b078512c47b6a150b';

abstract class _$UploadViewModel extends $Notifier<UploadUiState> {
  UploadUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UploadUiState, UploadUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UploadUiState, UploadUiState>,
              UploadUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
