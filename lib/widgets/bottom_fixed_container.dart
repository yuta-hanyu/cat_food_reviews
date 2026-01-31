import 'package:flutter/material.dart';

/// 画面下部の固定ボタン表示用のWidget
class BottomFixedContainer extends StatelessWidget {
  /// [child] 子要素となるWidget
  const BottomFixedContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, -2),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SafeArea(child: child),
    );
  }
}
