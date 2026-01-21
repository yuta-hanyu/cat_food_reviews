import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_base.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';

class TextXs extends StatelessWidget {
  const TextXs({
    super.key,
    required this.content,
    this.color,
    this.height,
    this.isUnderlined = false,
    this.fontFamily,
    this.maxLines,
    this.textAlign,
    this.overflow,
  });

  final String content;
  final Color? color;
  final double? height;
  final bool? isUnderlined;
  final String? fontFamily;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return TextBase(
      content: content,
      color: color,
      height: height,
      fontSize: TypographyToken.fontSizeXS,
      fontFamily: fontFamily,
      isUnderlined: isUnderlined,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
