import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

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
        Text(
          feature.titleGetter(l10n),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          feature.descriptionGetter(l10n),
          style: const TextStyle(fontSize: 12, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
