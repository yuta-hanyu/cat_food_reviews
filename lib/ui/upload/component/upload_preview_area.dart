import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/upload/upload_ui_state.dart';

class UploadPreviewArea extends StatelessWidget {
  const UploadPreviewArea({
    super.key,
    required this.uiState,
    required this.onClearImage,
  });

  final UploadUiState uiState;
  final VoidCallback onClearImage;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: uiState.selectedImage != null
            ? Colors.transparent
            : Colors.white.withValues(alpha: 0.5),
        border: uiState.selectedImage == null
            ? Border.all(
                color: Colors.grey.withValues(alpha: 0.3),
                width: 2,
                strokeAlign: BorderSide.strokeAlignInside,
              )
            : null,
      ),
      child: Stack(
        children: [
          // Image preview or placeholder
          if (uiState.selectedImage != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.file(
                uiState.selectedImage!,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            )
          else
            // Main content - placeholder
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Pink circle with camera icon and add icon
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      shape: BoxShape.circle,
                    ),
                    child: const Stack(
                      children: [
                        Center(
                          child: Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Icon(
                            Icons.add_circle,
                            size: 20,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextMBold(
                    content: l10n.uploadPreviewTitle,
                    color: SemanticColorToken.textDefault,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l10n.uploadPreviewSubtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.sentiment_satisfied_alt,
                        size: 16,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          // Decorative paw prints (only when no image)
          if (uiState.selectedImage == null) ...[
            const Positioned(
              bottom: -16,
              left: -16,
              child: Icon(Icons.pets, size: 64, color: Colors.pink),
            ),
            const Positioned(
              top: 24,
              right: 24,
              child: Icon(Icons.pets, size: 32, color: Colors.pink),
            ),
          ],
          // Clear image button (when image is selected)
          if (uiState.selectedImage != null)
            Positioned(
              top: 12,
              right: 12,
              child: GestureDetector(
                onTap: onClearImage,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.close, color: Colors.white, size: 20),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
