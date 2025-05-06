import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/loading_animation.dart';
import 'package:moodbeat/home/message/message.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';
import 'diary_entry_widget.dart';
import 'diary_nav_bar.dart';
import 'dart:io';
import 'package:http_parser/http_parser.dart';

Future<MultipartFile?> toMultipartFile(File? file) async {
  if (file == null) return null;

  final filename = file.path.split('/').last;
  final ext = filename.split('.').last.toLowerCase();

  // Map extension to MIME type
  final contentType = {
        'jpg': MediaType('image', 'jpeg'),
        'jpeg': MediaType('image', 'jpeg'),
        'png': MediaType('image', 'png'),
        'webp': MediaType('image', 'webp'),
      }[ext] ??
      MediaType('application', 'octet-stream'); // fallback

  return await MultipartFile.fromFile(
    file.path,
    filename: filename,
    contentType: contentType,
  );
}

class DiaryScreen extends HookWidget {
  final DateTime date;
  final String mood;

  final DiaryApi diaryApi = getIt<DiaryApi>();

  DiaryScreen({super.key, required this.date, required this.mood});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final isMessageShown = useState(false);
    final message = useState('');
    final diaryImage = useState<File?>(null);
    final currentMood = useState(mood);
    final moodImages = moodSelection.moodImages;
    final diaryController = useTextEditingController();

    final entryDate = useMemoized(() {
      final firstDay = DateTime(date.year, date.month, date.day);
      return DateFormat('yyyy-MM-dd').format(firstDay);
    }, [date]);

    print("Selected mood: $mood");
    print("Selected date: ${date.toLocal()}");
    print("Formatted date: $entryDate");

    void saveData() async {
      FocusScope.of(context).unfocus(); // 🔒 Hide the keyboard

      if (diaryController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please write something before saving.'),
            backgroundColor: Colors.redAccent,
            duration: Duration(seconds: 3),
          ),
        );
        return;
      }

      isLoading.value = true;
      final image = await toMultipartFile(diaryImage.value);

      try {
        final result = await diaryApi.createDiaryEntry(
          entryDate: entryDate,
          content: diaryController.text,
          emotion: mood,
          image: image,
        );
        message.value = result.data?.advice ?? 'You are doing great!';
        isMessageShown.value = true;
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to save entry: ${e.toString()}'),
              backgroundColor: Colors.redAccent,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      }

      isLoading.value = false;
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
      // Navigator.of(context).pushAndRemoveUntil(
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      //   (Route<dynamic> route) => false,
      // );

      Navigator.pop(context);
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
              diaryImage: diaryImage.value,
              diaryController: diaryController,
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
                message: message.value,
              ),
            ),
        ],
      ),
    );
  }
}
