import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_s_bold.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.keyboardType,
    this.suffix,
    this.textAlign = TextAlign.start,
    this.initialValue,
    this.hasError = false,
    this.onFocusLost,
  });

  final String hintText;
  final ValueChanged<String> onChanged;
  final TextInputType? keyboardType;
  final String? suffix;
  final TextAlign textAlign;
  final String? initialValue;
  final bool hasError;
  final VoidCallback? onFocusLost;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: hasError
              ? SemanticColorToken.textAlert
              : Colors.grey.withValues(alpha: 0.2),
          width: hasError ? 1.5 : 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Focus(
            onFocusChange: (hasFocus) {
              if (!hasFocus && onFocusLost != null) {
                onFocusLost!();
              }
            },
            child: TextFormField(
              initialValue: initialValue,
              onChanged: onChanged,
              keyboardType: keyboardType,
              textAlign: textAlign,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          if (suffix != null)
            Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: TextSBold(content: suffix!, color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
