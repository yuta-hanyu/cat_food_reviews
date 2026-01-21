import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:cat_food_reviews/ui/upload/component/upload_header_card.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';

class UploadScreen extends ConsumerStatefulWidget {
  const UploadScreen({super.key});

  @override
  ConsumerState<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends ConsumerState<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

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
            Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.camera_alt,
                    title: l10n.uploadCameraButton,
                    subtitle: l10n.uploadCameraSubtext,
                    color: SemanticColorToken.primary,
                    onTap: () => _onCameraButtonTapped(),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.photo_library,
                    title: l10n.uploadGalleryButton,
                    subtitle: l10n.uploadGallerySubtext,
                    color: Colors.green,
                    onTap: () => _onGalleryButtonTapped(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Preview area
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image_outlined, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: 8),
                  TextMBold(
                    content: l10n.uploadPreviewTitle,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(height: 4),
                  TextS(
                    content: l10n.uploadPreviewSubtitle,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Tip section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber[200]!),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.amber[700],
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.amber[800],
                        ),
                        children: [
                          TextSpan(
                            text: l10n.uploadTipTitle,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: l10n.uploadTipDescription),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            TextMBold(content: title, textAlign: TextAlign.center),
            const SizedBox(height: 4),
            TextS(content: subtitle, color: color, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  void _onCameraButtonTapped() {
    // TODO: Implement camera functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('カメラ機能は準備中です')));
  }

  void _onGalleryButtonTapped() {
    // TODO: Implement gallery functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('ギャラリー機能は準備中です')));
  }
}
