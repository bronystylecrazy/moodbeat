// lib/home/message/message.dart
import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/playlist/playlist_screen.dart'; // Import the playlist screen

class SaveConfirmationOverlay extends StatelessWidget {
  final Function() onTapClose;
  final String selectedMood; // Add this parameter
  final Map<String, String> moodImages;
  final DateTime date; //add the date

  const SaveConfirmationOverlay({
    Key? key,
    required this.onTapClose,
    required this.selectedMood, // Require the mood
    required this.moodImages,
    required this.date, // add date
  }) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 132,
                    height: 132,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(moodImages[selectedMood] ??
                            'assets/images/joy.png'),
                        // Display the mood image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 312,
                    child: Text(
                      'The best things happen when you trust the process. Keep going, and everything will fall into place.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                      // Navigate to the playlist screen, now passing the date
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistScreen(
                            date: date, // Pass the date here
                          ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
