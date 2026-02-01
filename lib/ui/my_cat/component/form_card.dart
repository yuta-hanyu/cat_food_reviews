import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/ui/my_cat/my_cat_ui_state.dart';
import 'package:cat_food_reviews/ui/my_cat/my_cat_view_model.dart';
import 'package:cat_food_reviews/ui/my_cat/component/cat_profile_image.dart';
import 'package:cat_food_reviews/ui/my_cat/component/cat_form_field.dart';
import 'package:cat_food_reviews/ui/my_cat/component/gender_selector.dart';
import 'package:cat_food_reviews/widgets/text/text_m.dart';
import 'package:cat_food_reviews/ui/my_cat/helper/validation_error_message_helper.dart';
import 'package:cat_food_reviews/widgets/app_text_form_field.dart';

class FormCard extends StatelessWidget {
  const FormCard({
    super.key,
    required this.uiState,
    required this.viewModel,
    required this.l10n,
  });

  final MyCatUiState uiState;
  final MyCatViewModel viewModel;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.white.withValues(alpha: 0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile image
          CatProfileImage(
            image: uiState.profileImage,
            onTap: () => _showImagePicker(context),
            onDelete: uiState.profileImage != null
                ? viewModel.deleteProfileImage
                : null,
            l10n: l10n,
          ),
          const SizedBox(height: 32),

          // Form fields
          Column(
            children: [
              // Name field
              CatFormField(
                label: l10n.catNameLabel,
                icon: Icons.face,
                errorMessage: uiState.showNameError
                    ? ValidationErrorMessageHelper.getNameErrorMessage(
                        uiState.nameErrorType,
                        l10n,
                      )
                    : null,
                child: AppTextFormField(
                  hintText: l10n.catNamePlaceholder,
                  onChanged: viewModel.updateName,
                  hasError: uiState.showNameError,
                  onFocusLost: viewModel.onNameFocusLost,
                ),
              ),
              const SizedBox(height: 24),

              // Age and Weight row
              Row(
                children: [
                  Expanded(
                    child: CatFormField(
                      label: l10n.ageLabel,
                      icon: Icons.cake,
                      errorMessage: uiState.showAgeError
                          ? ValidationErrorMessageHelper.getAgeErrorMessage(
                              uiState.ageErrorType,
                              l10n,
                            )
                          : null,
                      child: AppTextFormField(
                        hintText: '0',
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        suffix: l10n.ageUnit,
                        hasError: uiState.showAgeError,
                        onFocusLost: viewModel.onAgeFocusLost,
                        onChanged: (value) {
                          final age = int.tryParse(value) ?? 0;
                          viewModel.updateAge(age);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CatFormField(
                      label: l10n.weightLabel,
                      icon: Icons.monitor_weight,
                      errorMessage: uiState.showWeightError
                          ? ValidationErrorMessageHelper.getWeightErrorMessage(
                              uiState.weightErrorType,
                              l10n,
                            )
                          : null,
                      child: AppTextFormField(
                        hintText: '0.0',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        textAlign: TextAlign.center,
                        suffix: l10n.weightUnit,
                        hasError: uiState.showWeightError,
                        onFocusLost: viewModel.onWeightFocusLost,
                        onChanged: (value) {
                          final weight = double.tryParse(value);
                          viewModel.updateWeight(weight);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Gender selector
              CatFormField(
                label: l10n.genderLabel,
                icon: Icons.transgender,
                errorMessage: uiState.showGenderError
                    ? l10n.genderRequiredError
                    : null,
                child: GenderSelector(
                  selectedGender: uiState.gender,
                  onGenderSelected: viewModel.updateGender,
                  maleLabel: l10n.maleLabel,
                  femaleLabel: l10n.femaleLabel,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: TextM(content: l10n.takePhotoLabel),
              onTap: () {
                Navigator.pop(context);
                viewModel.takePicture();
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: TextM(content: l10n.selectFromGalleryLabel),
              onTap: () {
                Navigator.pop(context);
                viewModel.pickImage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
