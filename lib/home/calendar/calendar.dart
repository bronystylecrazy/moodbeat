import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/home/monthly_report/banner_report.dart';
import 'package:moodbeat/mood_selection_screen.dart';
import 'package:moodbeat/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbeat/animation_wrapper.dart'; // Import the animation wrapper

class MyCalendarScreen extends StatefulWidget {
  const MyCalendarScreen({super.key});

  @override
  _MyCalendarScreenState createState() => _MyCalendarScreenState();
}

class _MyCalendarScreenState extends State<MyCalendarScreen> {
  final DateTime _currentDate = DateTime.now();
  DateTime _currentMonth = DateTime.now();
  final Map<DateTime, String> _markedDates = {};
  final Map<String, String> moodImages = moodSelection.moodImages;

  // Function to handle adding a mood
  void _addMoodForDate(DateTime date) async {
    print('Adding mood for: ${DateFormat('yyyy-MM-dd').format(date)}');
    try {
      // Use the createSlideUpRoute function
      final selectedMood = await Navigator.push(
        context,
        createSlideUpRoute(MoodSelectionScreen(date: date)),
      );

      if (selectedMood != null) {
        setState(() {
          _markedDates[date] = selectedMood;
        });
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  // Function to go to the previous month
  void _previousMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
    });
  }

  // Function to go to the next month
  void _nextMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1);
    });
  }

  // Function to build the header with month/year and arrows
  Widget _buildHeader() {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.caretLeft,
                color: AppColors.defualtColor,
              ),
              onPressed: _previousMonth,
            ),
            Text(
              DateFormat.yMMMM().format(_currentMonth),
              style: AppTextStyles.heading2,
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.caretRight,
                color: AppColors.defualtColor,
              ),
              onPressed: _nextMonth,
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the weekday labels
  Widget _buildWeekdayLabels() {
    return Container(
      child: Row(
        children: List.generate(7, (index) {
          final weekday = DateFormat.E().format(
            DateTime(2023, 10, 1 + index),
          );
          return Expanded(
            child: Center(
              child: Text(
                weekday,
                style: const TextStyle(
                    fontFamily: AppTextStyles.primaryFontFamily,
                    fontSize: 14,
                    color: AppColors.disableText),
              ),
            ),
          );
        }),
      ),
    );
  }

  // Function to build a single date cell
  Widget _buildDateCell(DateTime date) {
    final markedMood = _markedDates[date];
    final isSelected = date.year == _currentDate.year &&
        date.month == _currentDate.month &&
        date.day == _currentDate.day;
    final isCurrentMonth = date.month == _currentMonth.month;

    return GestureDetector(
      onTap: () => _addMoodForDate(date),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100,
          maxHeight: 100, // Prevents overflow
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    markedMood != null ? Colors.transparent : AppColors.cream,
              ),
              child: markedMood != null
                  ? Image.asset(moodImages[markedMood]!)
                  : null,
            ),
            const SizedBox(height: 4),
            Text(
              date.day.toString(),
              style: TextStyle(
                fontFamily: AppTextStyles.primaryFontFamily,
                fontSize: 14,
                color: isSelected
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

  // Function to build the calendar grid
  List<Widget> _buildCalendarDays() {
    final firstDayOfMonth =
        DateTime(_currentMonth.year, _currentMonth.month, 1);
    final daysInMonth =
        DateTime(_currentMonth.year, _currentMonth.month + 1, 0).day;
    final firstWeekdayOfMonth = firstDayOfMonth.weekday % 7;

    final List<Widget> dayCells = [];

    for (int i = 0; i < firstWeekdayOfMonth; i++) {
      dayCells.add(const SizedBox.shrink());
    }

    for (int i = 1; i <= daysInMonth; i++) {
      final date = DateTime(_currentMonth.year, _currentMonth.month, i);
      dayCells.add(_buildDateCell(date));
    }

    return dayCells;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          _buildWeekdayLabels(),
          GridView.count(
            crossAxisCount: 7,
            shrinkWrap: true,
            childAspectRatio: 0.6,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 20),
            children: _buildCalendarDays(),
          ),
          const SizedBox(height: 16),
          ReportBanner(
            date: DateTime(2001),
          ),
        ],
      ),
    );
  }
}
