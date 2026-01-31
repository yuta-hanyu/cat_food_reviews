import 'package:flutter/material.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/text/text_m_bold.dart';
import 'package:cat_food_reviews/widgets/bottom_fixed_container.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return BottomFixedContainer(
      child: Row(
        children: [
          // Save to history button
          Expanded(
            child: _ActionButton(
              text: l10n.saveToHistory,
              icon: Icons.bookmark_add,
              isPrimary: true,
              onPressed: () {
                // TODO: Implement save to history functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.savedToHistoryMessage)),
                );
              },
            ),
          ),

          const SizedBox(width: 12),

          // Rescan button
          Expanded(
            child: _ActionButton(
              text: l10n.rescanButton,
              icon: Icons.replay,
              isPrimary: false,
              onPressed: () {
                // TODO: Implement rescan functionality
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.text,
    required this.icon,
    required this.isPrimary,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final bool isPrimary;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedScale(
        scale: 1.0,
        duration: const Duration(milliseconds: 100),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: isPrimary ? const Color(0xFFFF8DA1) : Colors.white,
            borderRadius: BorderRadius.circular(28),
            border: isPrimary
                ? null
                : Border.all(
                    color: const Color(0xFFFF8DA1).withValues(alpha: 0.3),
                    width: 2,
                  ),
            boxShadow: isPrimary
                ? [
                    BoxShadow(
                      color: const Color(0xFFFF8DA1).withValues(alpha: 0.3),
                      offset: const Offset(0, 4),
                      blurRadius: 12,
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isPrimary ? Colors.white : const Color(0xFFFF8DA1),
                size: 18,
              ),
              const SizedBox(width: 6),
              TextMBold(
                content: text,
                color: isPrimary ? Colors.white : const Color(0xFFFF8DA1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
