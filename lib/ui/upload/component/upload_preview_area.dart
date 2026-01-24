import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class UploadPreviewArea extends StatelessWidget {
  const UploadPreviewArea({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFE8B4B8), // ライトピンク
            Color(0xFFD4A5A0), // ピンクベージュ
            Color(0xFFCDA196), // ベージュ
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withValues(alpha: 0.2),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // White circle with pink camera icon
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: SemanticColorToken.backgroundWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: 50,
                    color: Colors.pink[200],
                  ),
                ),
                const SizedBox(height: 24),
                TextMBold(
                  content: l10n.uploadPreviewTitle,
                  color: SemanticColorToken.backgroundWhite,
                ),
              ],
            ),
          ),
          // Paw print in top right corner
          Positioned(
            top: 20,
            right: 24,
            child: Icon(
              Icons.pets,
              size: 28,
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
