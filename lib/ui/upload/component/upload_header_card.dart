import 'package:cat_food_reviews/widgets/headings/heading_xlarge.dart';
import 'package:cat_food_reviews/widgets/text/text_m.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class UploadHeaderCard extends StatelessWidget {
  const UploadHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              HeadingXLarge(
                content: l10n.uploadScreenMainTitle,
                color: SemanticColorToken.textDefault,
              ),
              const SizedBox(height: 24),

              // Description text (centered)
              TextM(content: l10n.uploadScreenDescription),
              const SizedBox(height: 8),

              // Highlighted ingredients text with instructions in one line
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextMBold(
                      content: l10n.uploadScreenIngredients,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextM(content: l10n.uploadScreenInstructions),
                ],
              ),
              const SizedBox(height: 12),

              TextM(
                content: l10n.uploadScreenSubtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.2),
                  spreadRadius: 2,
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.1),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.pets,
              size: 32,
              color: SemanticColorToken.primary,
            ),
          ),
        ),
      ],
    );
  }
}
