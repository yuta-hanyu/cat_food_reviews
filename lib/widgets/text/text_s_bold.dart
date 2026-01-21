import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_base.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';

class TextSBold extends StatelessWidget {
  const TextSBold({
    super.key,
    required this.content,
    this.color,
    this.height,
    this.isUnderlined = false,
    this.maxLines,
    this.textAlign,
    this.overflow,
  });

  final String content;
  final Color? color;
  final double? height;
  final bool? isUnderlined;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return TextBase(
      content: content,
      color: color,
      height: height,
      fontSize: TypographyToken.fontSizeS,
      fontWeight: TypographyToken.weightBold,
      isUnderlined: isUnderlined,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
