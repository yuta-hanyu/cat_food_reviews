import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class AppSnackBar {
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: TextMBold(
          content: message,
          color: SemanticColorToken.backgroundWhite,
        ),
        backgroundColor: SemanticColorToken.featureSafety,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(16),
      ),
    );
  }

  static void showError(BuildContext context, String message) {
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: TextMBold(
          content: message,
          color: SemanticColorToken.backgroundWhite,
        ),
        backgroundColor: SemanticColorToken.backgroundAlertStrong,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(16),
        action: SnackBarAction(
          label: l10n.close,
          textColor: SemanticColorToken.backgroundWhite,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
