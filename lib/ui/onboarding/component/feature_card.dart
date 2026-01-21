import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_2xs.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: feature.color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(feature.icon, color: feature.color, size: 32),
        ),
        const SizedBox(height: 8),
        TextMBold(
          content: feature.titleGetter(l10n),
          color: SemanticColorToken.textDefault,
        ),
        const SizedBox(height: 4),
        Text2Xs(
          content: feature.descriptionGetter(l10n),
          color: SemanticColorToken.textSecondary,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
