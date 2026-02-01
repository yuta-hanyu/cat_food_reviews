// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_cat_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyCatViewModel)
const myCatViewModelProvider = MyCatViewModelProvider._();

final class MyCatViewModelProvider
    extends $NotifierProvider<MyCatViewModel, MyCatUiState> {
  const MyCatViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myCatViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myCatViewModelHash();

  @$internal
  @override
  MyCatViewModel create() => MyCatViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyCatUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyCatUiState>(value),
    );
  }
}

String _$myCatViewModelHash() => r'2257d37551b30dd7ae29f6b1cc524255656e1075';

abstract class _$MyCatViewModel extends $Notifier<MyCatUiState> {
  MyCatUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyCatUiState, MyCatUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyCatUiState, MyCatUiState>,
              MyCatUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
