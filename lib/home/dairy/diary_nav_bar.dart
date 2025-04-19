// lib/home/dairy/diary_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DiaryNavBar extends StatefulWidget {
  final VoidCallback onSavePressed;
  final Function(File?) onPictureSelected; // Callback for selected picture

  const DiaryNavBar({
    Key? key,
    required this.onSavePressed,
    required this.onPictureSelected,
  }) : super(key: key);

  @override
  State<DiaryNavBar> createState() => _DiaryNavBarState();
}

class _DiaryNavBarState extends State<DiaryNavBar> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    widget.onPictureSelected(_selectedImage); // Pass the selected image back
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 10,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'asset/images/Picture.png',
                      width: 24,
                      height: 24,
                      color: AppColors.button,
                    ),
                    onPressed: _pickImage, // Call _pickImage
                  ),
                ],
              ),
              IconButton(
                icon: Image.asset(
                  'asset/images/Save.png',
                  width: 24,
                  height: 24,
                  color: AppColors.button,
                ),
                onPressed: widget.onSavePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
