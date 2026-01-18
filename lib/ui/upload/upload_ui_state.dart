import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_ui_state.freezed.dart';

@freezed
sealed class UploadUiState with _$UploadUiState {
  const factory UploadUiState({
    @Default(false) bool isUploading,
    @Default('') String errorMessage,
  }) = _UploadUiState;
}
