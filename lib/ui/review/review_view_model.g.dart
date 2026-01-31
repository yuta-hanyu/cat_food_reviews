// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReviewViewModel)
const reviewViewModelProvider = ReviewViewModelProvider._();

final class ReviewViewModelProvider
    extends $NotifierProvider<ReviewViewModel, ReviewUiState> {
  const ReviewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewViewModelHash();

  @$internal
  @override
  ReviewViewModel create() => ReviewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewUiState>(value),
    );
  }
}

String _$reviewViewModelHash() => r'4b212a717636aba591d519b09d4d219ddc7d0672';

abstract class _$ReviewViewModel extends $Notifier<ReviewUiState> {
  ReviewUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ReviewUiState, ReviewUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReviewUiState, ReviewUiState>,
              ReviewUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
