import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/core/app_theme.dart';
import 'package:cat_food_reviews/views/onboarding_screen.dart';

void main() {
  runApp(const ProviderScope(child: CatFoodReviewsApp()));
}

class CatFoodReviewsApp extends StatelessWidget {
  const CatFoodReviewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Food Reviews',
      theme: AppTheme.lightTheme,
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
