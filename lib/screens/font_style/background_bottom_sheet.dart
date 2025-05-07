import 'package:flutter/material.dart';

void showBackgroundBottomSheet({
  required BuildContext context,
  required String selectedBackground,
  required Map<String, Color> backgroundColors,
  required ValueChanged<String> onSelect,
}) {
  final backgrounds = backgroundColors.entries
      .map((entry) => {'name': entry.key, 'color': entry.value})
      .toList();

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: 452,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Background',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9188F7),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, color: Color(0xFF9188F7)),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // Background Options
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 20,
                  children: backgrounds.map((bg) {
                    final isSelected = selectedBackground == bg['name'];
                    return GestureDetector(
                      onTap: () => onSelect(bg['name'] as String),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: bg['color'] as Color,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isSelected
                                    ? const Color(0xFF9188F7)
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            child: isSelected
                                ? const Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.radio_button_checked,
                                        size: 18,
                                        color: Color(0xFF9188F7),
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            bg['name'] as String,
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
