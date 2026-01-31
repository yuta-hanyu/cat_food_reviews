import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/review/review_ui_state.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/headings/heading_medium.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_xs_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_xs.dart';

class NutritionSection extends StatelessWidget {
  const NutritionSection({super.key, required this.uiState});

  final ReviewUiState uiState;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Row(
          children: [
            const Icon(Icons.pie_chart, color: Color(0xFFFF8DA1), size: 20),
            const SizedBox(width: 8),
            HeadingMedium(content: l10n.nutritionDetailsTitle),
          ],
        ),

        const SizedBox(height: 12),

        // Nutrition items
        if (uiState.reviewData?.nutrition != null)
          Column(
            children: [
              _NutritionCard(
                title: l10n.proteinLabel,
                icon: Icons.fitness_center,
                iconColor: const Color(0xFFFF8DA1),
                backgroundColor: const Color(0xFFFCE7F3),
                nutrition: uiState.reviewData!.nutrition.protein,
                l10n: l10n,
              ),
              const SizedBox(height: 12),
              _NutritionCard(
                title: l10n.fatLabel,
                icon: Icons.opacity,
                iconColor: const Color(0xFFF59E0B),
                backgroundColor: const Color(0xFFFEF3C7),
                nutrition: uiState.reviewData!.nutrition.fat,
                l10n: l10n,
              ),
              const SizedBox(height: 12),
              _NutritionCard(
                title: l10n.fiberLabel,
                icon: Icons.grass,
                iconColor: const Color(0xFF34D399),
                backgroundColor: const Color(0xFFD1FAE5),
                nutrition: uiState.reviewData!.nutrition.fiber,
                l10n: l10n,
              ),
              const SizedBox(height: 12),
              _NutritionCard(
                title: l10n.carbohydrateLabel,
                icon: Icons.grain,
                iconColor: const Color(0xFF3B82F6),
                backgroundColor: const Color(0xFFDBEAFE),
                nutrition: uiState.reviewData!.nutrition.carbohydrate,
                l10n: l10n,
              ),
            ],
          ),
      ],
    );
  }
}

class _NutritionCard extends StatelessWidget {
  const _NutritionCard({
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.nutrition,
    required this.l10n,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final NutritionItem nutrition;
  final AppLocalizations l10n;

  Color get _getRatingColor {
    final rating = nutrition.rating;
    if (rating == l10n.ratingOptimal) {
      return const Color(0xFF34D399);
    } else if (rating == l10n.ratingSlightlyHigh ||
        rating == l10n.ratingSlightlyLow) {
      return const Color(0xFFF59E0B);
    } else if (rating == l10n.ratingHigh || rating == l10n.ratingLow) {
      return const Color(0xFFFF708A);
    } else {
      return const Color(0xFF6B7280);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),

          const SizedBox(width: 16),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and value row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextMBold(content: title),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: nutrition.value.toStringAsFixed(
                              nutrition.value == nutrition.value.roundToDouble()
                                  ? 0
                                  : 1,
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: iconColor,
                            ),
                          ),
                          TextSpan(
                            text: l10n.percentSymbol,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                // Rating and comment row
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _getRatingColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextXsBold(
                        content: nutrition.rating,
                        color: _getRatingColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextXs(
                        content: nutrition.comment,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
