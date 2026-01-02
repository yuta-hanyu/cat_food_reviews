import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:cat_food_reviews/models/app_feature.dart';
import 'package:cat_food_reviews/view_models/onboarding_view_model.dart';
import 'package:cat_food_reviews/widgets/feature_card.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingViewModelProvider);
    final viewModel = ref.read(onboardingViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                // Title
                const SizedBox(height: 24),
                const Text(
                  'CAT FOOD EVALUATOR',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                    color: AppColors.textSecondary,
                  ),
                ),

                const SizedBox(height: 32),

                // Main card with cats
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/main_theme.png'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // AI Analysis button
                      Positioned(
                        top: 24,
                        right: 24,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.auto_awesome,
                                color: AppColors.featureAI,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'AIで解析',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Main theme image is now the background
                      // Adding a subtle overlay for better text readability
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Main title
                const Column(
                  children: [
                    Text(
                      '愛猫の食事を',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      'かわいくチェック',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Features row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: AppFeature.features
                      .map((feature) => FeatureCard(feature: feature))
                      .toList(),
                ),

                const SizedBox(height: 24),

                // Description
                const Text(
                  '成分表を撮影するだけでOK。\n大切なねこちゃんのために、安全性と\n栄養バランスをAIが優しく判定します。',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: AppColors.textSecondary,
                  ),
                ),

                const SizedBox(height: 16),

                // Page indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 4,
                      backgroundColor: AppColors.primary,
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey.shade300,
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Start button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: state.isAnalyzing
                        ? null
                        : () => viewModel.startAnalysis(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimary,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      elevation: 0,
                    ),
                    child: state.isAnalyzing
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.white,
                            ),
                          )
                        : const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '始める',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ),
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
