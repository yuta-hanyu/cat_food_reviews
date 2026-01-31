import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/review/review_ui_state.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_xs_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_xs.dart';
import 'package:cat_food_reviews/data/repository/upload/review_analysis.dart';

class PointsSection extends StatelessWidget {
  const PointsSection({super.key, required this.uiState});

  final ReviewUiState uiState;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      children: [
        // Good points
        PointCard(
          title: l10n.goodPointsTitle,
          icon: Icons.thumb_up,
          color: const Color(0xFF34D399), // accent color
          points: uiState.reviewData?.goodPoints ?? [],
          isPositive: true,
        ),

        const SizedBox(height: 12),

        // Bad points
        PointCard(
          title: l10n.concernPointsTitle,
          icon: Icons.report_problem,
          color: const Color(0xFFFF708A), // danger color
          points: uiState.reviewData?.badPoints ?? [],
          isPositive: false,
        ),
      ],
    );
  }
}

class PointCard extends StatelessWidget {
  const PointCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.points,
    required this.isPositive,
  });

  final String title;
  final IconData icon;
  final Color color;
  final List<ReviewPoint> points;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        border: Border(left: BorderSide(color: color, width: 4)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 8),
              TextMBold(content: title),
            ],
          ),

          const SizedBox(height: 12),

          // Points list
          Column(
            children: points.asMap().entries.map((entry) {
              final index = entry.key;
              final point = entry.value;

              return Padding(
                padding: EdgeInsets.only(
                  bottom: index == points.length - 1 ? 0 : 12,
                  left: 4,
                ),
                child: _PointItem(
                  point: point,
                  color: color,
                  isPositive: isPositive,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _PointItem extends StatelessWidget {
  const _PointItem({
    required this.point,
    required this.color,
    required this.isPositive,
  });

  final ReviewPoint point;
  final Color color;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isPositive ? Icons.check_circle : Icons.error_outline,
              size: 16,
              color: color,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: TextXsBold(content: point.title, color: color),
            ),
          ],
        ),
        if (point.content.isNotEmpty) ...[
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextXs(
              content: point.content,
              color: const Color(0xFF6B7280),
            ),
          ),
        ],
      ],
    );
  }
}
