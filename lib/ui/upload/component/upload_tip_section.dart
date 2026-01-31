import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';

class UploadTipSection extends StatelessWidget {
  const UploadTipSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.orange.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Light bulb icon in orange circle
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.orange.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.lightbulb, color: Colors.orange, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextMBold(
                  content: l10n.uploadTipTitle,
                  color: SemanticColorToken.textDefault,
                ),
                const SizedBox(height: 4),
                TextS(content: l10n.uploadTipDescription, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
