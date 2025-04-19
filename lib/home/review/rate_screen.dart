// lib/home/review/rate_screen.dart
import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart'; // Import AppColors
import 'package:moodbeat/home_screen.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/home/review/review_screen.dart'; // Import ReviewScreen

class RateScreen extends StatefulWidget {
  final VoidCallback onClose;
  final String imageUrl;
  final DateTime playlistDate;

  const RateScreen({
    Key? key,
    required this.onClose,
    required this.imageUrl,
    required this.playlistDate,
  }) : super(key: key);

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  int _selectedRating = 0;

  void _navigateToHomeScreen() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (Route<dynamic> route) => false,
    );
  }

  void _navigateToReviewScreen() {
    Navigator.of(context).push(
      MaterialPageRoute( // Use MaterialPageRoute instead of PageRouteBuilder
        builder: (context) => ReviewScreen(
          initialRating: _selectedRating,
          imageUrl: widget.imageUrl,
          playlistDate: widget.playlistDate,
          onClose: _navigateToHomeScreen, // Pass the onClose callback
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Close Button (Top Right)
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
              onPressed: _navigateToHomeScreen,
              child: const Icon(
                Icons.close,
                size: 32,
              ),
            ),
          ),
          // Content (Centered)
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 152,
                          height: 152,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          DateFormat('dd MMMM yyyy').format(widget.playlistDate),
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
                    child: Container(
                      width: 365,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              for (int i = 1; i <= 5; i++)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedRating = i;
                                    });
                                    if (_selectedRating > 0) {
                                      _navigateToReviewScreen();
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 6),
                                    child: Image.asset(
                                      _selectedRating >= i
                                          ? 'asset/images/star_filled.png'
                                          : 'asset/images/star.png',
                                      width: 32,
                                      height: 32,
                                      color: AppColors.ascent,
                                    ),
                                  ),
                                ),
                            ],
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
