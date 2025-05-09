import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/core/hooks/diary_hook.dart';
import 'package:moodbeat/home/dairy/diary_entry_widget_readonly.dart';
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

class DiaryReadonlyScreen extends HookWidget {
  final DateTime date;

  final DiaryApi diaryApi = getIt<DiaryApi>();

  DiaryReadonlyScreen({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    final entryDate = useMemoized(() {
      final firstDay = DateTime(date.year, date.month, date.day);
      return DateFormat('yyyy-MM-dd').format(firstDay);
    }, [date]);
    final query = useGetDiaryEntryByDate(entryDate);

    print(query.data?.data);

    void closeMessage() {
      Navigator.pop(context);
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
            child: DiaryEntryReadonlyWidget(
              diaryEntry: query.data?.data,
            ),
          ),
          if (query.isLoading) const LoadingAnimation(),
        ],
      ),
    );
  }
}
