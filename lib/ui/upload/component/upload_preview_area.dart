import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/text/text_s.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class UploadPreviewArea extends StatelessWidget {
  const UploadPreviewArea({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image_outlined, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 8),
          TextMBold(content: l10n.uploadPreviewTitle, color: Colors.grey[600]),
          const SizedBox(height: 4),
          TextS(content: l10n.uploadPreviewSubtitle, color: Colors.grey[500]),
        ],
      ),
    );
  }
}
