import 'package:flutter/material.dart';
import 'package:cat_food_reviews/ui/my_cat/my_cat_ui_state.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
    required this.maleLabel,
    required this.femaleLabel,
  });

  final Gender? selectedGender;
  final ValueChanged<Gender> onGenderSelected;
  final String maleLabel;
  final String femaleLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _GenderOption(
            gender: Gender.male,
            label: maleLabel,
            icon: Icons.male,
            isSelected: selectedGender == Gender.male,
            onTap: () => onGenderSelected(Gender.male),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _GenderOption(
            gender: Gender.female,
            label: femaleLabel,
            icon: Icons.female,
            isSelected: selectedGender == Gender.female,
            onTap: () => onGenderSelected(Gender.female),
          ),
        ),
      ],
    );
  }
}

class _GenderOption extends StatelessWidget {
  const _GenderOption({
    required this.gender,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final Gender gender;
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.pink.withValues(alpha: 0.05)
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? Colors.pink
                : Colors.grey.withValues(alpha: 0.2),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: isSelected ? Colors.pink : Colors.grey, size: 18),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.pink : Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
