import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/loading_animation.dart';
import 'package:moodbeat/home/message/message.dart';
import 'diary_entry_widget.dart';
import 'diary_nav_bar.dart';
import 'package:moodbeat/home_screen.dart';
import 'dart:io';

class DiaryScreen extends HookWidget {
  final DateTime date;
  final String mood;

  const DiaryScreen({super.key, required this.date, required this.mood});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final isMessageShown = useState(false);
    final diaryImage = useState<File?>(null);
    final currentMood = useState(mood);
    final moodImages = moodSelection.moodImages;

    void saveData() async {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 3));
      isLoading.value = false;
      isMessageShown.value = true;
    }

    void closeMessage() {
      Navigator.pop(context);
    }

    void handlePictureSelected(File? image) {
      diaryImage.value = image;
      if (image != null) {
        print('Image path: ${image.path}');
      }
    }

    void navigateToHomeScreen() {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
        (Route<dynamic> route) => false,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 16,
            top: 80,
            child: IconButton(
              color: AppColors.defualtColor,
              iconSize: 32,
              icon: const Icon(Icons.close),
              onPressed: navigateToHomeScreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 16, right: 16),
            child: DiaryEntryWidget(
              date: date,
              initialMood: mood,
              onMoodChanged: () => currentMood.value = mood,
            ),
          ),
          DiaryNavBar(
            onSavePressed: saveData,
            onPictureSelected: handlePictureSelected,
          ),
          if (isLoading.value) const LoadingAnimation(),
          if (isMessageShown.value)
            Center(
              child: SaveConfirmationOverlay(
                onTapClose: closeMessage,
                selectedMood: currentMood.value,
                moodImages: moodImages,
                date: date,
              ),
            ),
        ],
      ),
    );
  }
}
