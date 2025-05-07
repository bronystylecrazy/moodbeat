import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/dairy/diary_screen.dart';
import 'package:moodbeat/animation_wrapper.dart';

class MoodSelectionScreen extends HookWidget {
  final DateTime date;

  const MoodSelectionScreen({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedMood = useState<String?>(null);
    final moodImages = moodSelection.moodImages;

    final row1Moods = ['Joy', 'Surprise', 'Expecting', 'Trust'];
    final row2Moods = ['Disgust', 'Anger', 'Fear', 'Sad'];

    void navigateToDiaryScreen() {
      Navigator.push(
        context,
        createSlideUpRoute(
          DiaryScreen(date: date, mood: selectedMood.value ?? "null"),
        ),
      );
    }

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
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              // Main content
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextHeader(),
                  const SizedBox(height: 40),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: row1Moods.map((mood) {
                            return MoodButton(
                              mood: mood,
                              imagePath: moodImages[mood]!,
                              onPressed: () {
                                selectedMood.value = mood;
                                navigateToDiaryScreen();
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
                                selectedMood.value = mood;
                                navigateToDiaryScreen();
                              },
                            );
                          }).toList(),
                        ),
                      ],
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
