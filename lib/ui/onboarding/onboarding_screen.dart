import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature.dart';
import 'package:cat_food_reviews/ui/onboarding/onboarding_view_model.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature_card.dart';
import 'package:cat_food_reviews/widgets/app_title_widget.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    // 画面表示イベントを一度だけ送信
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(onboardingViewModelProvider.notifier).logScreenView();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingViewModelProvider);
    final viewModel = ref.read(onboardingViewModelProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Title
              const SizedBox(height: 24),
              const AppTitleWidget(),

              const SizedBox(height: 20),

              // Main card with cats
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/main_theme.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Main title
              Column(
                children: [
                  Text(
                    l10n.mainTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    l10n.mainSubtitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Features row
              Row(
                children: getFeatures()
                    .map(
                      (feature) =>
                          Expanded(child: FeatureCard(feature: feature)),
                    )
                    .toList(),
              ),

              const SizedBox(height: 24),

              // Description carousel
              SizedBox(
                height: 80,
                child: PageView(
                  onPageChanged: (index) {
                    viewModel.changePage(index);
                  },
                  children: [
                    Text(
                      l10n.carouselDescriptionMain,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: AppColors.textSub,
                      ),
                    ),
                    Text(
                      l10n.carouselDescriptionDisclaimer,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: AppColors.textSub,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Page indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: state.currentPageIndex == 0 ? 4 : 3,
                    backgroundColor: state.currentPageIndex == 0
                        ? AppColors.primary
                        : Colors.grey.shade300,
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    radius: state.currentPageIndex == 1 ? 4 : 3,
                    backgroundColor: state.currentPageIndex == 1
                        ? AppColors.primary
                        : Colors.grey.shade300,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Start button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.goUpload();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonPrimary,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l10n.startButton,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
