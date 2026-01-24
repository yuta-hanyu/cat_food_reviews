import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/upload/upload_ui_state.dart';
import 'package:cat_food_reviews/core/logger/app_logger_provider.dart';

part 'upload_view_model.g.dart';

@riverpod
class UploadViewModel extends _$UploadViewModel {
  late final _logger = ref.read(appLoggerProvider);

  @override
  UploadUiState build() => const UploadUiState();

  Future<void> onCameraButtonTapped() async {
    await _pickImage(ImageSource.camera);
  }

  Future<void> onGalleryButtonTapped() async {
    await _pickImage(ImageSource.gallery);
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      state = state.copyWith(isUploading: true);

      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image != null) {
        final File imageFile = File(image.path);
        final imageSourceType = source == ImageSource.camera
            ? ImageSourceType.camera
            : ImageSourceType.gallery;

        state = state.copyWith(
          selectedImage: imageFile,
          isUploading: false,
          resultMessage: ResultMessage(
            type: MessageType.success,
            imageSource: imageSourceType,
          ),
        );
      } else {
        state = state.copyWith(isUploading: false);
      }
    } catch (e, stackTrace) {
      _logger.e(
        message: 'Image picker failed',
        tag: 'UploadViewModel',
        error: e,
        stackTrace: stackTrace,
      );

      state = state.copyWith(
        isUploading: false,
        resultMessage: const ResultMessage(type: MessageType.error),
      );
    }
  }

  void clearImage() {
    state = state.copyWith(selectedImage: null, resultMessage: null);
  }

  void clearMessages() {
    state = state.copyWith(resultMessage: null);
  }
}
