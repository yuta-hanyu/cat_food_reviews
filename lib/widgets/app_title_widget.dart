import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:cat_food_reviews/widgets/text/text_xl_bold.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Pink ellipse with paw icon (rotated to the left)
        Transform.rotate(
          angle: -math.pi / 12,
          child: Container(
            width: 45,
            height: 60,
            decoration: BoxDecoration(
              color: SemanticColorToken.primary,
              borderRadius: const BorderRadius.all(Radius.elliptical(28, 32)),
              boxShadow: [
                BoxShadow(
                  color: SemanticColorToken.primary.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Transform.rotate(
              angle: math.pi / 12, // アイコンは傾けないように戻す
              child: const Icon(Icons.pets, color: Colors.white, size: 28),
            ),
          ),
        ),

        const SizedBox(width: 16),
        const TextXLBold(
          content: String.fromEnvironment('appName', defaultValue: ''),
          color: SemanticColorToken.textDefault,
        ),
      ],
    );
  }
}
