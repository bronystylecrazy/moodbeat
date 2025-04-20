// lib/home/dairy/diary_entry_widget.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/mood_selection_screen.dart';

class DiaryEntryWidget extends StatefulWidget {
  final DateTime date;
  final String initialMood;
  final VoidCallback onMoodChanged;

  const DiaryEntryWidget({
    Key? key,
    required this.date,
    required this.initialMood,
    required this.onMoodChanged,
  }) : super(key: key);

  @override
  _DiaryEntryWidgetState createState() => _DiaryEntryWidgetState();
}

class _DiaryEntryWidgetState extends State<DiaryEntryWidget> {
  late TextEditingController _diaryController;
  late String _currentMood;
  final Map<String, String> moodImages = moodSelection.moodImages;

  @override
  void initState() {
    super.initState();
    _diaryController = TextEditingController();
    _currentMood = widget.initialMood;
  }

  @override
  void dispose() {
    _diaryController.dispose();
    super.dispose();
  }

  void _navigateToMoodSelectionScreen() async {
    final selectedMood = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MoodSelectionScreen(date: widget.date),
      ),
    );
    if (selectedMood != null) {
      setState(() {
        _currentMood = selectedMood;
      });
      widget.onMoodChanged();
    }
  }

  @override
  Widget build(BuildContext context) {
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
                DateFormat('dd MMMM yyyy').format(widget.date),
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
                onTap: _navigateToMoodSelectionScreen,
                child: Column(
                  children: [
                    Container(
                      width: 132,
                      height: 133,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(moodImages[_currentMood] ??
                              'assets/images/joy.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _currentMood,
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
                controller: _diaryController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'How was your day going?',
                  hintStyle: TextStyle(
                    color: AppColors.disableText,
                    fontSize: 14,
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
