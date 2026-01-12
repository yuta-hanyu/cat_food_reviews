import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final bool addPetDecorations;

  const AppBackground({
    super.key,
    required this.child,
    this.addPetDecorations = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Stack(
        children: [
          // 装飾的な肉球アイコン（HTMLと同じ位置）
          if (addPetDecorations) ...[
            Positioned(
              top: 80,
              left: -20,
              child: Transform.rotate(
                angle: -0.2,
                child: Icon(
                  Icons.pets,
                  size: 120,
                  color: Colors.pink.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              bottom: 160,
              right: -10,
              child: Transform.rotate(
                angle: 0.2,
                child: Icon(
                  Icons.pets,
                  size: 120,
                  color: Colors.yellow.withOpacity(0.15),
                ),
              ),
            ),
          ],
          // メインコンテンツ
          child,
        ],
      ),
    );
  }
}