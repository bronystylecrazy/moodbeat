import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/loading_animation.dart';
import 'package:moodbeat/home/message/message.dart';
import 'diary_entry_widget.dart';
import 'diary_nav_bar.dart';
import 'package:moodbeat/home_screen.dart'; // Import the HomeScreen
import 'dart:io';

class DiaryScreen extends StatefulWidget {
  final DateTime date;
  final String mood;

  const DiaryScreen({Key? key, required this.date, required this.mood})
      : super(key: key);

  @override
  _DiaryScreenState createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  bool _isLoading = false;
  bool _isMessageShown = false;
  final Map<String, String> moodImages = moodSelection.moodImages;
  late String _currentMood;
  File? _diaryImage; // Add _diaryImage

  void _saveData() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isLoading = false;
      _isMessageShown = true;
    });
  }

  void _closeMessage() {
    Navigator.pop(context);
  }

  void _moodChanged() {
    setState(() {});
  }

  void _handlePictureSelected(File? image) { // Add _handlePictureSelected
    setState(() {
      _diaryImage = image;
    });
    // Now you can use _diaryImage to display the image or save it
    if (_diaryImage != null) {
      print('Image path: ${_diaryImage!.path}');
    }
  }

  void _navigateToHomeScreen() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (Route<dynamic> route) => false, // This condition removes all routes
    );
  }

  @override
  void initState() {
    super.initState();
    _currentMood = widget.mood;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 16,
            top: 67,
            child: IconButton(
              color: AppColors.defualtColor,
              iconSize: 32,
              icon: const Icon(Icons.close),
              onPressed: _navigateToHomeScreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 16, right: 16),
            child: DiaryEntryWidget(
              date: widget.date,
              initialMood: widget.mood,
              onMoodChanged: _moodChanged,
            ),
          ),
          DiaryNavBar(
            onSavePressed: _saveData,
            onPictureSelected: _handlePictureSelected, // Use _handlePictureSelected
          ),
          if (_isLoading) const LoadingAnimation(),
          if (_isMessageShown)
            Center(
                child: SaveConfirmationOverlay(
              onTapClose: _closeMessage,
              selectedMood: _currentMood,
              moodImages: moodImages,
              date: widget.date, // Pass the date here
            )),
        ],
      ),
    );
  }
}
