import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/dairy/diary_screen.dart'; // Import the DiaryScreen
import 'package:moodbeat/animation_wrapper.dart'; // Import the animation wrapper


class MoodSelectionScreen extends StatefulWidget {
  final DateTime date;

  const MoodSelectionScreen({Key? key, required this.date}) : super(key: key);

  @override
  _MoodSelectionScreenState createState() => _MoodSelectionScreenState();
}

class _MoodSelectionScreenState extends State<MoodSelectionScreen> {
  String? _selectedMood;

  final Map<String, String> moodImages = moodSelection.moodImages;

  final List<String> row1Moods = [
    'Joy',
    'Surprise',
    'Expecting',
    'Trust',
  ];
  final List<String> row2Moods = [
    'Disgust',
    'Anger',
    'Fear',
    'Sad',
  ];

void _navigateToDiaryScreen(BuildContext context) {
    Navigator.push(
      context,
      createSlideUpRoute(
        DiaryScreen(
            date: widget.date, mood: _selectedMood ?? "null"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              // Close Button
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  color: AppColors.defualtColor,
                  iconSize: 32,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Main content
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextHeader(),
                  const SizedBox(height: 40),
                  Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: row1Moods.map((mood) {
                              return MoodButton(
                                mood: mood,
                                imagePath: moodImages[mood]!,
                                onPressed: () {
                                  setState(() {
                                    _selectedMood = mood;
                                  });
                                  _navigateToDiaryScreen(context);
                                },
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: row2Moods.map((mood) {
                              return MoodButton(
                                mood: mood,
                                imagePath: moodImages[mood]!,
                                onPressed: () {
                                  setState(() {
                                    _selectedMood = mood;
                                  });
                                  _navigateToDiaryScreen(context);
                                },
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Mood Button Widget
class MoodButton extends StatelessWidget {
  final String mood;
  final String imagePath;
  final VoidCallback onPressed;

  const MoodButton({
    Key? key,
    required this.mood,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 16),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 60,
              height: 60,
            ),
            const SizedBox(height: 8),
            Text(
              mood,
              style: const TextStyle(
                color: AppColors.textColor,
                fontFamily: AppTextStyles.primaryFontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "How are you today?",
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
          ),
        ),
        const Text(
          "Select your mood",
          style: TextStyle(
            color: AppColors.disableText,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
