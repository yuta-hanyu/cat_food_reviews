import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_header_card.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_action_buttons.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_preview_area.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_tip_section.dart';
import 'package:cat_food_reviews/ui/upload/upload_view_model.dart';
import 'package:cat_food_reviews/ui/upload/upload_ui_state.dart';
import 'package:cat_food_reviews/widgets/app_snack_bar.dart';

class UploadScreen extends ConsumerStatefulWidget {
  const UploadScreen({super.key});

  @override
  ConsumerState<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends ConsumerState<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final viewModel = ref.read(uploadViewModelProvider.notifier);
    final uploadState = ref.watch(uploadViewModelProvider);

    // メッセージの監視とSnackBar表示
    ref.listen(uploadViewModelProvider, (previous, next) {
      final resultMessage = next.resultMessage;
      if (resultMessage != null) {
        switch (resultMessage.type) {
          case MessageType.success:
            final message = resultMessage.imageSource == ImageSourceType.camera
                ? l10n.imagePickedFromCamera
                : l10n.imagePickedFromGallery;
            AppSnackBar.showSuccess(context, message);
          case MessageType.error:
            AppSnackBar.showError(context, l10n.imagePickError);
        }
        // メッセージをクリア
        Future.microtask(() => viewModel.clearMessages());
      }
    });

    return Scaffold(
      appBar: AppHeader(title: l10n.uploadScreenTitle, icon: Icons.camera_alt),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main title with paw icon (centered layout)
            const UploadHeaderCard(),
            const SizedBox(height: 32),

            // Camera and Gallery buttons
            UploadActionButtons(
              onCameraTap: () => viewModel.onCameraButtonTapped(),
              onGalleryTap: () => viewModel.onGalleryButtonTapped(),
            ),
            const SizedBox(height: 32),

            // Preview area
            UploadPreviewArea(
              uploadState: uploadState,
              onClearImage: () => viewModel.clearImage(),
            ),
            const SizedBox(height: 24),

            // Tip section
            const UploadTipSection(),
          ],
        ),
      ),
    );
  }
}
