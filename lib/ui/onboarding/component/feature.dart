import 'package:flutter/material.dart';
import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

/// オンボーディング画面の機能説明
class Feature {
  const Feature({
    required this.icon,
    required this.titleGetter,
    required this.descriptionGetter,
    required this.color,
  });

  final IconData icon;
  final String Function(AppLocalizations) titleGetter;
  final String Function(AppLocalizations) descriptionGetter;
  final Color color;
}

/// アプリの主要機能一覧
List<Feature> getFeatures() => [
  Feature(
    icon: Icons.camera_alt,
    titleGetter: (l10n) => l10n.cameraFeatureTitle,
    descriptionGetter: (l10n) => l10n.cameraFeatureDescription,
    color: AppColors.featureCamera,
  ),
  Feature(
    icon: Icons.analytics,
    titleGetter: (l10n) => l10n.aiAnalysisTitle,
    descriptionGetter: (l10n) => l10n.aiAnalysisDescription,
    color: AppColors.featureAI,
  ),
  Feature(
    icon: Icons.check_circle,
    titleGetter: (l10n) => l10n.nutritionFeatureTitle,
    descriptionGetter: (l10n) => l10n.nutritionFeatureDescription,
    color: AppColors.featureSafety,
  ),
];
