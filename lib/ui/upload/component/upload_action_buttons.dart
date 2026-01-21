import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class UploadActionButtons extends StatelessWidget {
  const UploadActionButtons({
    super.key,
    required this.onCameraTap,
    required this.onGalleryTap,
  });

  final VoidCallback onCameraTap;
  final VoidCallback onGalleryTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Row(
      children: [
        Expanded(
          child: _buildActionButton(
            icon: Icons.camera_alt,
            title: l10n.uploadCameraButton,
            subtitle: l10n.uploadCameraSubtext,
            color: SemanticColorToken.primary,
            backgroundColor: Colors.pink.withValues(alpha: 0.6),
            onTap: onCameraTap,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildActionButton(
            icon: Icons.photo_library,
            title: l10n.uploadGalleryButton,
            subtitle: l10n.uploadGallerySubtext,
            color: Colors.orange,
            backgroundColor: Colors.orange.withValues(alpha: 0.6),
            onTap: onGalleryTap,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required Color backgroundColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 28, color: SemanticColorToken.textWhite),
            ),
            const SizedBox(height: 12),
            TextMBold(
              content: title,
              textAlign: TextAlign.center,
              color: SemanticColorToken.backgroundWhite,
            ),
            const SizedBox(height: 4),
            TextS(
              content: subtitle,
              color: SemanticColorToken.textSecondary,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
