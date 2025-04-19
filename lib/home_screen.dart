import 'package:flutter/material.dart';
import 'package:moodbeat/home/calendar/calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 67, 16, 0),
        child: MyCalendarScreen(),
      ),
    );
  }
}
