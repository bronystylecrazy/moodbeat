import 'package:flutter/material.dart';
import 'package:moodbeat/mood_selection_screen.dart';
import 'package:moodbeat/animation_wrapper.dart';
import 'package:moodbeat/main.dart';

class ReportBanner extends StatelessWidget {
  final DateTime date;

  const ReportBanner({Key? key, required this.date}) : super(key: key);

  // void _navigateToMoodSelection(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     createSlideUpRoute(MoodSelectionScreen(date: date)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => _navigateToMoodSelection(context),
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
                    'Monthly Report',
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
            const SizedBox(height: 20), // Add spacing here
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFDF9F1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildMoodColumn(
                                  "https://placehold.co/42x44", "60%"),
                              _buildMoodColumn(
                                  "https://placehold.co/36x40", "25%"),
                              _buildMoodColumn(
                                  "https://placehold.co/35x37", "5%"),
                              _buildMoodColumn(
                                  "https://placehold.co/37x37", "5%"),
                              _buildMoodColumn(
                                  "https://placehold.co/35x37", "5%"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 35,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 169,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFDE890),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(21),
                                        bottomLeft: Radius.circular(21),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 252,
                                top: 0,
                                child: Container(
                                  width: 27,
                                  height: 35,
                                  decoration:
                                      BoxDecoration(color: const Color(0xFFEFC2FF)),
                                ),
                              ),
                              Positioned(
                                left: 279,
                                top: 0,
                                child: Container(
                                  width: 28,
                                  height: 35,
                                  decoration:
                                      BoxDecoration(color: const Color(0xFFCEF1FF)),
                                ),
                              ),
                              Positioned(
                                left: 169,
                                top: 0,
                                child: Container(
                                  width: 83,
                                  height: 35,
                                  decoration:
                                      BoxDecoration(color: const Color(0xFFFF9A82)),
                                ),
                              ),
                              Positioned(
                                left: 307,
                                top: 0,
                                child: Container(
                                  width: 23,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFA1C5FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(21),
                                        bottomRight: Radius.circular(21),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

  Widget _buildMoodColumn(String imageUrl, String percentage) {
    return Container(
      // width: width, // Remove fixed width
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // width: width, // Remove fixed width
            height: imageUrl == "https://placehold.co/42x44" ? 44 : imageUrl == "https://placehold.co/36x40" ? 40 : 37,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            percentage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF101010),
              fontSize: percentage == "60%" ? 14 : 10,
              fontFamily: 'Montserrat',
              fontWeight: percentage == "60%" ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
