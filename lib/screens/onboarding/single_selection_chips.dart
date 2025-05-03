import 'package:flutter/material.dart';

class SingleSelectionChips extends StatelessWidget {
  final List<String> options;
  final String? selected;
  final ValueChanged<String> onSelect;
  final double spacing;
  final double runSpacing;

  const SingleSelectionChips({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelect,
    this.spacing = 10,
    this.runSpacing = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: options.map((option) {
        final isSelected = selected == option;

        return GestureDetector(
          onTap: () => onSelect(option),
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF9188F7) : Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: isSelected ? Colors.white : const Color(0xFF9188F7),
                width: 1,
              ),
            ),
            child: Text(
              option,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF9188F7),
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
