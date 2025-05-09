import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCard extends StatelessWidget {
  final VoidCallback onTap;
  final DateTime entryDate;

  const DateCard({
    super.key,
    required this.onTap,
    required this.entryDate,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('d MMM');
    final stackedDates = [
      dateFormat.format(entryDate.subtract(const Duration(days: 1))),
      dateFormat.format(entryDate),
      dateFormat.format(entryDate.add(const Duration(days: 1))),
    ];

    final fullDateFormat = DateFormat('d MMMM yyyy');
    final fullDate = fullDateFormat.format(entryDate);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: const Color(0xFFFFEBEB),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // 🟪 Left stacked purple box
            Container(
              width: 64,
              decoration: const BoxDecoration(
                color: Color(0xFF9188F7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: stackedDates.map((text) {
                  final bool isSelected = text == dateFormat.format(entryDate);
                  return Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isSelected ? Colors.greenAccent : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(width: 12),

            // 📅 Full date text
            Expanded(
              child: Text(
                fullDate,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                ),
              ),
            ),

            // ▶️ Arrow
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.arrow_right,
                color: Color(0xFF9188F7),
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
