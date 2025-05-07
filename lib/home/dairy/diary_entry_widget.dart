import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/mood_selection_screen.dart';

class DiaryEntryWidget extends HookWidget {
  final DateTime date;
  final String initialMood;
  final VoidCallback onMoodChanged;
  final File? diaryImage;
  final TextEditingController diaryController;

  const DiaryEntryWidget({
    super.key,
    required this.date,
    required this.initialMood,
    required this.onMoodChanged,
    required this.diaryController,
    this.diaryImage,
  });

  @override
  Widget build(BuildContext context) {
    final currentMood = useState(initialMood);
    final moodImages = moodSelection.moodImages;

    Future<void> navigateToMoodSelectionScreen() async {
      final selectedMood = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MoodSelectionScreen(date: date),
        ),
      );
      if (selectedMood is String && selectedMood.isNotEmpty) {
        currentMood.value = selectedMood;
        onMoodChanged();
      }
    }

    useEffect(() {
      diaryController.text = '';
      return () {
        diaryController.dispose();
      };
    }, []);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 75.0),
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 100.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight:
                MediaQuery.of(context).size.height * 0.8, // adjust as needed
          ),
          decoration: const ShapeDecoration(
            color: Color(0xFFFFFBF0),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFEDE8DB)),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date header
              Text(
                DateFormat('dd MMMM yyyy').format(date),
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.40,
                ),
              ),
              const SizedBox(height: 24),

              // Mood selector
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

              // Diary text
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 100),
                child: IntrinsicHeight(
                  child: TextField(
                    controller: diaryController,
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    textAlignVertical: TextAlignVertical.top,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontFamily: AppTextStyles.primaryFontFamily,
                      fontWeight: FontWeight.w400,
                    ),
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
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              // Diary image (shown immediately after text)
              if (diaryImage != null) ...[
                const SizedBox(height: 24),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      diaryImage!,
                      fit: BoxFit.contain, // Preserve original ratio
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
