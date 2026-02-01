import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/headings/heading_medium.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.l10n});

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadingMedium(
              content: l10n.registerCatInfoTitle,
              color: const Color(0xFF5D4037),
            ),
            const SizedBox(width: 8),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                height: 1.4,
              ),
              children: [
                TextSpan(text: l10n.personalizedFoodEvaluationPrefix),
                TextSpan(
                  text: l10n.personalizedFoodEvaluationHighlight,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                TextSpan(text: '\n${l10n.personalizedFoodEvaluationSuffix}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
