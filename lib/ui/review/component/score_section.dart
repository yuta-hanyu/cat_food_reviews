import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/headings/heading_large.dart';
import 'package:cat_food_reviews/widgets/headings/heading_medium.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:cat_food_reviews/widgets/text/text_xs_bold.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/review/review_ui_state.dart';
import 'dart:math' as math;

class ScoreSection extends StatelessWidget {
  const ScoreSection({super.key, required this.uiState});

  final ReviewUiState uiState;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF8DA1)..withValues(alpha: 0.12),
            offset: const Offset(0, 4),
            blurRadius: 20,
            spreadRadius: -2,
          ),
        ],
        border: Border(
          bottom: BorderSide(
            color: const Color(0xFFFF8DA1)..withValues(alpha: 0.2),
            width: 4,
          ),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Score and title row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Circular score
              SizedBox(
                width: 96,
                height: 96,
                child: CustomPaint(
                  painter: CircularScorePainter(
                    score: uiState.reviewData?.overallScore ?? 0,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeadingMedium(
                          content: (uiState.reviewData?.overallScore ?? 0)
                              .toString(),
                        ),
                        TextXsBold(
                          content: AppLocalizations.of(context).scoreLabel,
                          color: const Color(0xFFFF8DA1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 24),

              // Title
              Expanded(
                child: HeadingLarge(
                  content: uiState.reviewData?.oneLiner ?? '',
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Evaluation text
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFF8DA1).withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextS(content: uiState.reviewData?.overallEvaluation ?? ''),
          ),
        ],
      ),
    );
  }
}

class CircularScorePainter extends CustomPainter {
  const CircularScorePainter({required this.score});

  final int score;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - 20) / 2;
    const strokeWidth = 10.0;

    // Background circle
    final backgroundPaint = Paint()
      ..color = const Color(0xFFF3F4F6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Progress circle
    final progressPaint = Paint()
      ..color = const Color(0xFFFF8DA1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final sweepAngle = (score / 100) * 2 * math.pi;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2, // Start from top
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
