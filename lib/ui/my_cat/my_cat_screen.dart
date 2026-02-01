import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:cat_food_reviews/widgets/bottom_fixed_container.dart';
import 'package:cat_food_reviews/widgets/buttons/primary_button.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/my_cat/my_cat_view_model.dart';
import 'package:cat_food_reviews/ui/my_cat/component/title_section.dart';
import 'package:cat_food_reviews/ui/my_cat/component/form_card.dart';
import 'package:cat_food_reviews/widgets/app_full_screen_loading.dart';

class MyCatScreen extends ConsumerWidget {
  const MyCatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final viewModel = ref.read(myCatViewModelProvider.notifier);
    final uiState = ref.watch(myCatViewModelProvider);

    return Scaffold(
      appBar: AppHeader(
        title: l10n.myCatRegistrationTitle,
        icon: Icons.edit_note,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Title section
                      TitleSection(l10n: l10n),
                      const SizedBox(height: 24),

                      // Form card
                      FormCard(
                        uiState: uiState,
                        viewModel: viewModel,
                        l10n: l10n,
                      ),
                    ],
                  ),
                ),
              ),

              // Fixed register button
              BottomFixedContainer(
                child: PrimaryButton(
                  content: l10n.registerCatButton,
                  leftIcon: const Icon(
                    Icons.pets,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () => viewModel.registerCat(),
                ),
              ),
            ],
          ),
          // Loading overlay
          if (uiState.isLoading) const AppFullScreenLoading(),
        ],
      ),
    );
  }
}
