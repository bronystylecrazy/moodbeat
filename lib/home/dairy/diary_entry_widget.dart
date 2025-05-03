import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/mood_selection_screen.dart';

class DiaryEntryWidget extends HookWidget {
  final DateTime date;
  final String initialMood;
  final VoidCallback onMoodChanged;

  const DiaryEntryWidget({
    super.key,
    required this.date,
    required this.initialMood,
    required this.onMoodChanged,
  });

  @override
  Widget build(BuildContext context) {
    final diaryController = useTextEditingController();
    final currentMood = useState(initialMood);
    final moodImages = moodSelection.moodImages;

    Future<void> navigateToMoodSelectionScreen() async {
      final selectedMood = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MoodSelectionScreen(date: date),
        ),
      );
      if (selectedMood != null) {
        currentMood.value = selectedMood;
        onMoodChanged();
      }
    }

    return Container(
      height: 500,
      decoration: const ShapeDecoration(
        color: Color(0xFFFFFBF0),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFEDE8DB)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                DateFormat('dd MMMM yyyy').format(date),
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.40,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: GestureDetector(
                onTap: navigateToMoodSelectionScreen,
                child: Column(
                  children: [
                    Container(
                      width: 132,
                      height: 133,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            moodImages[currentMood.value] ??
                                'assets/images/joy.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      currentMood.value,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 18,
                        fontFamily: AppTextStyles.primaryFontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: TextField(
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontWeight: FontWeight.w400,
                ),
                controller: diaryController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'How was your day going?',
                  hintStyle: TextStyle(
                    color: AppColors.disableText,
                    fontSize: 20,
                    fontFamily: AppTextStyles.primaryFontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                  isDense: true,
                ),
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
