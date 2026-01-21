import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_base.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';

class PrefixTextM extends StatelessWidget {
  const PrefixTextM({
    super.key,
    required this.content,
    required this.prefix,
    this.color,
    this.height,
    this.isUnderlined = false,
    this.maxLines,
    this.overflow,
  });

  final String content;
  final String prefix;
  final Color? color;
  final double? height;
  final bool? isUnderlined;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextBase(
            content: prefix,
            color: color,
            height: height,
            fontSize: TypographyToken.fontSizeM,
            isUnderlined: isUnderlined,
            maxLines: maxLines,
            overflow: overflow,
          ),
          Flexible(
            child: TextBase(
              content: content,
              color: color,
              height: height,
              fontSize: TypographyToken.fontSizeM,
              isUnderlined: isUnderlined,
              maxLines: maxLines,
              overflow: overflow,
            ),
          ),
        ],
      ),
    );
  }
}
