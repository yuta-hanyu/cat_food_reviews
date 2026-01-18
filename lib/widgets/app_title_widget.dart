import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cat_food_reviews/core/app_colors.dart';

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
              color: AppColors.primary,
              borderRadius: const BorderRadius.all(Radius.elliptical(28, 32)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.3),
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
        Text(
          const String.fromEnvironment('appName', defaultValue: ''),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColors.textMain,
            letterSpacing: 1,
            shadows: [
              Shadow(
                color: AppColors.primary.withValues(alpha: 0.3),
                offset: const Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
