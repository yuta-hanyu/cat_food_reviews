import 'package:flutter/material.dart';

/// ジョブメドレーのデザインシステムにおけるタイポグラフィトークン
class TypographyToken {
  const TypographyToken._();

  // ファミリー
  static const familyDefault = 'Hiragino Kaku Gothic Pro';

  // Noto Sans JP と YakuHanJP ゴシック体（約物すべて）をマージしたもの
  // https://yakuhanjp.qranoko.jp/
  static const familyNoto = 'Merged Yaku Han JP';

  // フォントサイズ
  static const fontSize2XS = 10.0;
  static const fontSizeXS = 12.0;
  static const fontSizeS = 14.0;
  static const fontSizeM = 16.0;
  static const fontSizeL = 18.0;
  static const fontSizeXL = 22.0;

  // 行の高さ
  static const lineHeight = 1.5;

  // 文字間
  static const letterSpacing = 0.04;

  // フォントウェイト
  static const FontWeight weightNormal = FontWeight.w300;
  static const FontWeight weightMedium = FontWeight.w400;
  static const FontWeight weightBold = FontWeight.w600;
}
