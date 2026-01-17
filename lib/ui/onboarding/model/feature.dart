import 'package:flutter/material.dart';

class AppFeature {
  const AppFeature({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String description;
  final Color color;

  static List<AppFeature> get features => [
    const AppFeature(
      icon: Icons.camera_alt,
      title: 'パシャリ',
      description: '成分表を撮影',
      color: Colors.pink,
    ),
    const AppFeature(
      icon: Icons.auto_awesome,
      title: 'AI診断',
      description: 'AI が解析',
      color: Colors.blue,
    ),
    const AppFeature(
      icon: Icons.verified,
      title: '安心！',
      description: '安全性をチェック',
      color: Colors.green,
    ),
  ];
}
