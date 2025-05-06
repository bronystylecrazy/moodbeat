import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/playlist/playlist_screen.dart';

class SaveConfirmationOverlay extends HookWidget {
  final VoidCallback onTapClose;
  final String selectedMood;
  final Map<String, String> moodImages;
  final DateTime date;
  final String message; // New message field

  const SaveConfirmationOverlay({
    super.key,
    required this.onTapClose,
    required this.selectedMood,
    required this.moodImages,
    required this.date,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapClose,
      child: Stack(
        children: [
          ModalBarrier(
            color: Colors.black.withOpacity(0.6),
            dismissible: false,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(
                top: 24,
                left: 29,
                right: 29,
                bottom: 36,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFDF9F1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 132,
                    height: 132,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          moodImages[selectedMood] ?? 'assets/images/joy.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 312,
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16,
                        fontFamily: AppTextStyles.primaryFontFamily,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PlaylistScreen(date: date, mood: selectedMood),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1B1B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Reveal playlist of the day',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
