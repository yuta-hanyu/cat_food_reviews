import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class UploadTipSection extends StatelessWidget {
  const UploadTipSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amber[200]!),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.lightbulb_outline, color: Colors.amber[700], size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 14, color: Colors.amber[800]),
                children: [
                  TextSpan(
                    text: l10n.uploadTipTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: l10n.uploadTipDescription),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
