import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_xs.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class CatFormField extends StatelessWidget {
  const CatFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.child,
    this.errorMessage,
  });

  final String label;
  final IconData icon;
  final Widget child;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.pink, size: 18),
            const SizedBox(width: 8),
            TextS(content: label, color: Colors.grey),
          ],
        ),
        const SizedBox(height: 8),
        child,
        // Error message display
        if (errorMessage != null) ...[
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: TextXs(
              content: errorMessage!,
              color: SemanticColorToken.textAlert,
            ),
          ),
        ],
      ],
    );
  }
}
