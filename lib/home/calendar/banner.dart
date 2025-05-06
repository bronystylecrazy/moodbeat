import 'package:flutter/material.dart';
import 'package:moodbeat/mood_selection_screen.dart';
import 'package:moodbeat/animation_wrapper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyCalendarBanner extends StatelessWidget {
  final DateTime date; // Add a date parameter

  const EmptyCalendarBanner({Key? key, required this.date}) : super(key: key);

  void _navigateToMoodSelection(BuildContext context) async {
    // Use the createSlideUpRoute function
    await Navigator.push(
      context,
      createSlideUpRoute(MoodSelectionScreen(date: date)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          _navigateToMoodSelection(context), // Call the navigation function
      child: Center(
        child: SvgPicture.asset(
          'assets/images/monthly_report_banner.svg', // Replace with your banner image path
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
