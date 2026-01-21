import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_header_card.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_action_buttons.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_preview_area.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_tip_section.dart';
import 'package:cat_food_reviews/ui/upload/upload_view_model.dart';

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
              onCameraTap: () => viewModel.onCameraButtonTapped(context),
              onGalleryTap: () => viewModel.onGalleryButtonTapped(context),
            ),
            const SizedBox(height: 32),

            // Preview area
            const UploadPreviewArea(),
            const SizedBox(height: 24),

            // Tip section
            const UploadTipSection(),
          ],
        ),
      ),
    );
  }
}
