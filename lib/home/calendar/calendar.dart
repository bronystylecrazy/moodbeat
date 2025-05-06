import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbeat/animation_wrapper.dart';
import 'package:moodbeat/core/hooks/diary_hook.dart';
import 'package:moodbeat/home/monthly_report/banner_report.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/mood_selection_screen.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class MyCalendarScreen extends HookWidget {
  const MyCalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final currentMonth = useState(DateTime.now());
    final startDate = useMemoized(() {
      final firstDay =
          DateTime(currentMonth.value.year, currentMonth.value.month, 1);
      return DateFormat('yyyy-MM-dd').format(firstDay);
    }, [currentMonth.value]);

    final endDate = useMemoized(() {
      final lastDay =
          DateTime(currentMonth.value.year, currentMonth.value.month + 1, 0);
      return DateFormat('yyyy-MM-dd').format(lastDay);
    }, [currentMonth.value]);
    final markedDates = useState<Map<DateTime, String>>({});
    final moodImages = moodSelection.moodImages;

    print("Start Date: $startDate");
    print("End Date: $endDate");

    final response = useListDiaryEntriesByDateRange(startDate, endDate);
    final diaryEntries = response?.data?.data ?? [];

    final diaryEntriesMap = {
      for (final entry in diaryEntries) entry.entryDate: entry,
    };

    // Count each emotion
    final emotionCounts = <String, int>{};
    for (final entry in diaryEntries) {
      final emotion = entry.emotion;
      if (emotion != null && emotion.isNotEmpty) {
        print("Emotion: $emotion");
        emotionCounts[emotion] = (emotionCounts[emotion] ?? 0) + 1;
      }
    }

// Calculate total
    final totalEmotions = emotionCounts.values.fold<int>(0, (a, b) => a + b);

// Calculate percentage
    final emotionPercentages = {
      for (final entry in emotionCounts.entries)
        entry.key: (entry.value / totalEmotions) * 100,
    };

    void addMoodForDate(DateTime date) async {
      final selectedMood = await Navigator.push(
        context,
        createSlideUpRoute(MoodSelectionScreen(date: date)),
      );

      if (selectedMood != null) {
        markedDates.value = Map.from(markedDates.value)..[date] = selectedMood;
      }
    }

    void previousMonth() {
      currentMonth.value =
          DateTime(currentMonth.value.year, currentMonth.value.month - 1);
    }

    void nextMonth() {
      currentMonth.value =
          DateTime(currentMonth.value.year, currentMonth.value.month + 1);
    }

    Widget buildHeader() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.caretLeft,
                color: AppColors.defualtColor),
            onPressed: previousMonth,
          ),
          Text(
            DateFormat.yMMMM().format(currentMonth.value),
            style: AppTextStyles.heading2,
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.caretRight,
                color: AppColors.defualtColor),
            onPressed: nextMonth,
          ),
        ],
      );
    }

    Widget buildWeekdayLabels() {
      return Row(
        children: List.generate(7, (index) {
          final weekday = DateFormat.E().format(DateTime(2023, 10, 1 + index));
          return Expanded(
            child: Center(
              child: Text(
                weekday,
                style: const TextStyle(
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontSize: 14,
                  color: AppColors.disableText,
                ),
              ),
            ),
          );
        }),
      );
    }

    Widget buildDateCell(DateTime date) {
      final isSelected = date.year == currentDate.year &&
          date.month == currentDate.month &&
          date.day == currentDate.day;

      final currentEntryDate =
          DateTime(currentMonth.value.year, currentMonth.value.month, date.day);
      final formattedEntryDate =
          DateFormat('yyyy-MM-dd').format(currentEntryDate);
      final isCurrentMonth = date.month == currentMonth.value.month;
      final currentEntry = diaryEntriesMap[formattedEntryDate];
      final markedMood = currentEntry?.emotion;

      final isFuture = date.isAfter(DateTime.now());
      const disabledColor = Color(0xFFBDBDBD);

      return GestureDetector(
        onTap: isFuture
            ? () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("You can't select a mood for a future date."),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            : () => addMoodForDate(date),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 100, maxHeight: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: markedMood != null
                      ? Colors.transparent
                      : isFuture
                          ? disabledColor.withOpacity(0.2)
                          : AppColors.cream,
                ),
                child: isFuture
                    ? null
                    : (markedMood != null
                        ? Image.asset(moodImages[currentEntry?.emotion]!)
                        : null),
              ),
              const SizedBox(height: 4),
              Text(
                date.day.toString(),
                style: TextStyle(
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontSize: 14,
                  color: isFuture
                      ? disabledColor
                      : isSelected
                          ? AppColors.defualtColor
                          : isCurrentMonth
                              ? AppColors.textColor
                              : AppColors.defualtColor,
                  fontWeight: isSelected
                      ? FontWeight.w800
                      : AppTextStyles.body2.fontWeight,
                ),
              )
            ],
          ),
        ),
      );
    }

    List<Widget> buildCalendarDays() {
      final firstDayOfMonth =
          DateTime(currentMonth.value.year, currentMonth.value.month, 1);
      final daysInMonth =
          DateTime(currentMonth.value.year, currentMonth.value.month + 1, 0)
              .day;
      final firstWeekdayOfMonth = firstDayOfMonth.weekday % 7;

      final List<Widget> dayCells = [];

      for (int i = 0; i < firstWeekdayOfMonth; i++) {
        dayCells.add(const SizedBox.shrink());
      }

      for (int i = 1; i <= daysInMonth; i++) {
        final date =
            DateTime(currentMonth.value.year, currentMonth.value.month, i);
        dayCells.add(buildDateCell(date));
      }

      return dayCells;
    }

    return Scaffold(
      backgroundColor: Colors.white, // Set white background
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 67, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(),
              const SizedBox(height: 16),
              buildWeekdayLabels(),
              GridView.count(
                crossAxisCount: 7,
                shrinkWrap: true,
                childAspectRatio: 0.6,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 20),
                children: buildCalendarDays(),
              ),
              const SizedBox(height: 16),
              ReportBanner(
                date: DateTime.now(),
                emotionPercentages: emotionPercentages,
                startDate: startDate,
                endDate: endDate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
