import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature.dart';
import 'package:cat_food_reviews/ui/onboarding/onboarding_view_model.dart';
import 'package:cat_food_reviews/ui/onboarding/component/feature_card.dart';
import 'package:cat_food_reviews/widgets/app_title_widget.dart';
import 'package:cat_food_reviews/widgets/headings/heading_medium.dart';
import 'package:cat_food_reviews/widgets/buttons/primary_button.dart';

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
    final l10n = AppLocalizations.of(context);

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
                  HeadingMedium(
                    content: l10n.mainTitle,
                    color: SemanticColorToken.primary,
                  ),
                  HeadingMedium(
                    content: l10n.mainSubtitle,
                    color: SemanticColorToken.primary,
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
                    TextS(
                      content: l10n.carouselDescriptionMain,
                      textAlign: TextAlign.center,
                      color: SemanticColorToken.textSecondary,
                    ),
                    TextS(
                      content: l10n.carouselDescriptionDisclaimer,
                      textAlign: TextAlign.center,
                      color: SemanticColorToken.textSecondary,
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
                        ? SemanticColorToken.primary
                        : Colors.grey.shade300,
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    radius: state.currentPageIndex == 1 ? 4 : 3,
                    backgroundColor: state.currentPageIndex == 1
                        ? SemanticColorToken.primary
                        : Colors.grey.shade300,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Start button
              Stack(
                children: [
                  PrimaryButton(
                    content: l10n.startButton,
                    rightIcon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: SemanticColorToken.backgroundWhite,
                    ),
                    onPressed: () {
                      viewModel.goUpload();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
