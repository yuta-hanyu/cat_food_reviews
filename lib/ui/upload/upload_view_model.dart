import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/upload/upload_ui_state.dart';
import 'package:cat_food_reviews/ui/upload/model/review_navigation_data.dart';
import 'package:cat_food_reviews/core/logger/app_logger_provider.dart';
import 'package:cat_food_reviews/data/repository/upload/upload_repository_provider.dart';
import 'package:cat_food_reviews/router/app_router.dart';
import 'package:cat_food_reviews/router/app_routes.dart';

part 'upload_view_model.g.dart';

@riverpod
class UploadViewModel extends _$UploadViewModel {
  late final _logger = ref.read(appLoggerProvider);
  late final _uploadRepository = ref.read(uploadRepositoryProvider);
  late final _router = ref.read(goRouterProvider);

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
      state = state.copyWith(isLoading: true);

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
          isLoading: false,
          resultMessage: ResultMessage(
            type: MessageType.success,
            actionType: UploadActionType.imagePick,
            imageSource: imageSourceType,
          ),
        );
      } else {
        state = state.copyWith(isLoading: false);
      }
    } catch (e, stackTrace) {
      _logger.e(
        message: 'Image picker failed',
        tag: 'UploadViewModel',
        error: e,
        stackTrace: stackTrace,
      );

      state = state.copyWith(
        isLoading: false,
        resultMessage: const ResultMessage(
          type: MessageType.error,
          actionType: UploadActionType.imagePick,
        ),
      );
    }
  }

  void clearImage() {
    state = state.copyWith(selectedImage: null, resultMessage: null);
  }

  void clearMessages() {
    state = state.copyWith(resultMessage: null);
  }

  /// 選択された画像をサーバーにアップロード
  Future<void> uploadImage() async {
    final selectedImage = state.selectedImage;
    if (selectedImage == null) {
      state = state.copyWith(
        resultMessage: const ResultMessage(
          type: MessageType.error,
          actionType: UploadActionType.analysis,
        ),
      );
      return;
    }

    state = state.copyWith(isLoading: true);

    final result = await _uploadRepository.uploadImage(selectedImage);

    result.when(
      success: (data) {
        _logger.d(message: 'Upload successful: $data', tag: 'UploadViewModel');

        // レビュー画面に遷移（分析結果と画像パスを渡す）
        final navigationData = ReviewNavigationData(
          reviewAnalysis: data,
          imagePath: selectedImage.path,
        );

        _router.push(AppRoutes.review, extra: navigationData);

        state = state.copyWith(
          isLoading: false,
          resultMessage: const ResultMessage(
            type: MessageType.success,
            actionType: UploadActionType.analysis,
          ),
        );
      },
      failure: (error) {
        _logger.e(
          message: 'Image upload failed: $error',
          tag: 'UploadViewModel',
          error: error,
        );

        state = state.copyWith(
          isLoading: false,
          resultMessage: const ResultMessage(
            type: MessageType.error,
            actionType: UploadActionType.analysis,
          ),
        );
      },
    );
  }
}
