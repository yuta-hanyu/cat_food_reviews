import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:cat_food_reviews/ui/review/component/review_header.dart';
import 'package:cat_food_reviews/ui/review/component/score_section.dart';
import 'package:cat_food_reviews/ui/review/component/points_section.dart';
import 'package:cat_food_reviews/ui/review/component/nutrition_section.dart';
import 'package:cat_food_reviews/ui/review/component/action_buttons.dart';
import 'package:cat_food_reviews/ui/review/review_view_model.dart';
import 'package:cat_food_reviews/ui/upload/model/review_navigation_data.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({super.key, this.imagePath});

  final String? imagePath;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Go RouterのextraからNavigationDataを取得
    final navigationData =
        GoRouterState.of(context).extra as ReviewNavigationData?;

    if (navigationData != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(reviewViewModelProvider.notifier)
            .setReviewData(
              navigationData.reviewAnalysis,
              imagePath: navigationData.imagePath,
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(reviewViewModelProvider);
    final l10n = AppLocalizations.of(context);

    // TODO 500エラー時
    return Scaffold(
      appBar: AppHeader(title: l10n.reviewTitle, icon: Icons.analytics),
      body: Column(
        children: [
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Image section
                  ReviewImageSection(uiState: uiState),

                  // Content
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
                    child: Column(
                      children: [
                        // Score and evaluation section
                        ScoreSection(uiState: uiState),

                        const SizedBox(height: 24),

                        // Good and bad points
                        PointsSection(uiState: uiState),

                        const SizedBox(height: 24),

                        // Nutrition details
                        NutritionSection(uiState: uiState),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Fixed bottom buttons
          const ActionButtons(),
        ],
      ),
    );
  }
}
