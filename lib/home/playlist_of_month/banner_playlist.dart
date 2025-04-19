import 'package:flutter/material.dart';
import 'package:moodbeat/mood_selection_screen.dart';
import 'package:moodbeat/animation_wrapper.dart';
import 'package:moodbeat/main.dart';

class PlaylistBanner extends StatelessWidget {
  final DateTime date;

  const PlaylistBanner({Key? key, required this.date}) : super(key: key);

  void _navigateToMoodSelection(BuildContext context) async {
    // Placeholder for navigation to playlist screen
    // You'll replace this with actual navigation logic
    print("Navigating to Playlist Screen");
    // await Navigator.push(
    //   context,
    //   createSlideUpRoute(MoodSelectionScreen(date: date)),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToMoodSelection(context),
      child: Container(
        width: 370,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Playlist of the month',
                    style: TextStyle(
                      color: const Color(0xFF101010),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 9,
                        height: 14,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 126,
              decoration: ShapeDecoration(
                color: const Color(0x7FC49BDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 207,
                    top: 79,
                    child: Container(
                      width: 135,
                      height: 31,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF9188F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Tap to Listen',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 188,
                    top: 15,
                    child: SizedBox(
                      width: 154,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Your Monthly Vibe is ',
                              style: TextStyle(
                                color: const Color(0xFF101010),
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.40,
                              ),
                            ),
                            TextSpan(
                              text: 'Ready!',
                              style: TextStyle(
                                color: const Color(0xFFDCF881),
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.40,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 19,
                    child: Container(
                      width: 97,
                      height: 87,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: const Color(0x7AFFFBF0),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            top: 50,
                            child: Container(
                              width: 37,
                              height: 37,
                              decoration: ShapeDecoration(
                                color: const Color(0x7AFFFBF0),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 3,
                            top: 28,
                            child: Container(
                              width: 49,
                              height: 59,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(),
                            ),
                          ),
                          Positioned(
                            left: 24,
                            top: 9,
                            child: Container(
                              width: 49,
                              height: 59,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
