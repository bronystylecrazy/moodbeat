import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:moodbeat/main.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class DiaryNavBar extends HookWidget {
  final VoidCallback onSavePressed;
  final Function(File?) onPictureSelected;

  const DiaryNavBar({
    super.key,
    required this.onSavePressed,
    required this.onPictureSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedImage = useState<File?>(null);

    Future<void> pickImage() async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null) {
        print('No image selected.');
        return;
      }

      final ext = p.extension(pickedFile.path).toLowerCase();
      File imageFile = File(pickedFile.path);

      if (ext == '.heic' || ext == '.heif') {
        try {
          final bytes = await imageFile.readAsBytes();
          final decoded = img.decodeImage(bytes);
          if (decoded == null) throw Exception('Unable to decode HEIC image');

          final jpegBytes = img.encodeJpg(decoded, quality: 90);
          final tempDir = await getTemporaryDirectory();
          final newPath = p.join(tempDir.path,
              '${p.basenameWithoutExtension(imageFile.path)}.jpg');
          imageFile = await File(newPath).writeAsBytes(jpegBytes);

          print('HEIC image converted to JPEG: $newPath');
        } catch (e) {
          print('Failed to convert HEIC to JPEG: $e');
          return;
        }
      }

      selectedImage.value = imageFile;
      onPictureSelected(imageFile);
    }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/Picture.png',
                    width: 24,
                    height: 24,
                    color: AppColors.button,
                  ),
                  onPressed: pickImage,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/Save.png',
                    width: 24,
                    height: 24,
                    color: AppColors.button,
                  ),
                  onPressed: onSavePressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
