// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(uploadRepository)
const uploadRepositoryProvider = UploadRepositoryProvider._();

final class UploadRepositoryProvider
    extends
        $FunctionalProvider<
          UploadRepository,
          UploadRepository,
          UploadRepository
        >
    with $Provider<UploadRepository> {
  const UploadRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadRepositoryHash();

  @$internal
  @override
  $ProviderElement<UploadRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UploadRepository create(Ref ref) {
    return uploadRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadRepository>(value),
    );
  }
}

String _$uploadRepositoryHash() => r'e64df50bc12b84c1eb2cf857615f359bbc61f4ea';
