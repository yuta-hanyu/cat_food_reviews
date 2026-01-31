import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/review/review_ui_state.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'dart:io';

class ReviewImageSection extends StatelessWidget {
  const ReviewImageSection({super.key, required this.uiState});

  final ReviewUiState uiState;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Container(
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFF8DA1).withValues(alpha: 0.12),
              offset: const Offset(0, 4),
              blurRadius: 20,
              spreadRadius: -2,
            ),
          ],
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF3F4F6),
              ),
              child: uiState.imagePath != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.file(
                        File(uiState.imagePath!),
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Center(
                      child: Icon(
                        Icons.image,
                        size: 48,
                        color: Color(0xFF9CA3AF),
                      ),
                    ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                      size: 12,
                    ),
                    const SizedBox(width: 6),
                    TextS(
                      content: AppLocalizations.of(context).scannedPhotoTitle,
                      color: SemanticColorToken.backgroundWhite,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
