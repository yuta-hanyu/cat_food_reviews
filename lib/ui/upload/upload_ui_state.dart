import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_ui_state.freezed.dart';

enum MessageType { success, error }

enum ImageSourceType { camera, gallery }

@freezed
sealed class ResultMessage with _$ResultMessage {
  const factory ResultMessage({
    required MessageType type,
    ImageSourceType? imageSource,
  }) = _ResultMessage;
}

@freezed
sealed class UploadUiState with _$UploadUiState {
  const factory UploadUiState({
    @Default(false) bool isUploading,
    File? selectedImage,
    ResultMessage? resultMessage,
  }) = _UploadUiState;
}
