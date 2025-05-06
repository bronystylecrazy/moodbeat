import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/review/review_screen.dart';

class RateScreen extends HookWidget {
  final VoidCallback onClose;
  final String imageUrl;
  final DateTime playlistDate;

  const RateScreen({
    super.key,
    required this.onClose,
    required this.imageUrl,
    required this.playlistDate,
  });

  @override
  Widget build(BuildContext context) {
    final selectedRating = useState(0);

    void goToCalendar() {
      context.push("/calendar");
    }

    void goToReviewScreen() {
      context.push(
        '/review',
        extra: {
          'initialRating': selectedRating.value,
          'imageUrl': imageUrl,
          'playlistDate': playlistDate,
          'onClose': goToCalendar,
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Close Button
          Positioned(
            right: 16,
            top: 67,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                foregroundColor: AppColors.defualtColor,
              ),
              onPressed: goToCalendar,
              child: const Icon(
                Icons.close,
                size: 32,
              ),
            ),
          ),
          // Main content
          Center(
            child: Container(
              width: 365,
              height: 279,
              child: Stack(
                children: [
                  Positioned(
                    left: 25,
                    top: 0,
                    child: SizedBox(
                      width: 312,
                      child: Text(
                        'Rate your experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 20,
                          fontFamily: AppTextStyles.primaryFontFamily,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 103,
                    top: 48,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 152,
                          height: 152,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          DateFormat('dd MMMM yyyy').format(playlistDate),
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 14,
                            fontFamily: AppTextStyles.primaryFontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 247,
                    child: SizedBox(
                      width: 365,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 1; i <= 5; i++)
                            GestureDetector(
                              onTap: () {
                                selectedRating.value = i;
                                goToReviewScreen();
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Container(
                                  // decoration: const BoxDecoration(
                                  //   boxShadow: [
                                  //     BoxShadow(
                                  //       color: Colors.black26,
                                  //       blurRadius: 4,
                                  //       offset: Offset(0, 2),
                                  //     ),
                                  //   ],
                                  // ),
                                  child: Image.asset(
                                    selectedRating.value >= i
                                        ? 'assets/images/star_filled.png'
                                        : 'assets/images/star.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                ),
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
