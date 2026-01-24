import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_ui_state.freezed.dart';

enum MessageType { success, error }

enum ImageSourceType { camera, gallery }

enum UploadActionType { imagePick, analysis }

@freezed
sealed class ResultMessage with _$ResultMessage {
  const factory ResultMessage({
    required MessageType type,
    required UploadActionType actionType,
    ImageSourceType? imageSource,
  }) = _ResultMessage;
}

@freezed
sealed class UploadUiState with _$UploadUiState {
  const factory UploadUiState({
    @Default(false) bool isLoading,
    File? selectedImage,
    ResultMessage? resultMessage,
  }) = _UploadUiState;
}
