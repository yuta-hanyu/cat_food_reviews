// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UploadViewModel)
const uploadViewModelProvider = UploadViewModelProvider._();

final class UploadViewModelProvider
    extends $NotifierProvider<UploadViewModel, UploadState> {
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
  Override overrideWithValue(UploadState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadState>(value),
    );
  }
}

String _$uploadViewModelHash() => r'b84e94ec1b26b0366682a27d1920373a6fab90e3';

abstract class _$UploadViewModel extends $Notifier<UploadState> {
  UploadState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UploadState, UploadState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UploadState, UploadState>,
              UploadState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
