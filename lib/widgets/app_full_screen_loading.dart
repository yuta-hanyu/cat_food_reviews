import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class AppFullScreenLoading extends StatelessWidget {
  const AppFullScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black.withValues(alpha: 0.5),
      child: SizedBox.expand(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: SemanticColorToken.backgroundWhite,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
