import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class DiaryEntryReadonlyWidget extends HookWidget {
  final DbDiaryEntry? diaryEntry;

  const DiaryEntryReadonlyWidget({
    super.key,
    this.diaryEntry,
  });

  @override
  Widget build(BuildContext context) {
    if (diaryEntry == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 100.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          decoration: const ShapeDecoration(
            color: Color(0xFFFFFBF0),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFEDE8DB)),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date header
              Text(
                DateFormat('dd MMMM yyyy').format(DateTime.parse(
                    diaryEntry?.createdAt ?? DateTime.now().toString())),
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontFamily: AppTextStyles.primaryFontFamily,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.40,
                ),
              ),
              const SizedBox(height: 24),

              // Mood selector
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 132,
                      height: 133,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            moodSelection.moodImages[diaryEntry!.emotion] ??
                                'assets/images/joy.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      diaryEntry?.emotion ?? 'Unknown',
                      style: const TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 18,
                        fontFamily: AppTextStyles.primaryFontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Diary text
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 100),
                child: IntrinsicHeight(
                  child: TextField(
                    readOnly: true,
                    maxLines: null,
                    expands: true,
                    controller:
                        TextEditingController(text: diaryEntry!.content),
                    keyboardType: TextInputType.multiline,
                    textAlignVertical: TextAlignVertical.top,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontFamily: AppTextStyles.primaryFontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How was your day going?',
                      hintStyle: TextStyle(
                        color: AppColors.disableText,
                        fontSize: 20,
                        fontFamily: AppTextStyles.primaryFontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              if (diaryEntry!.imageUrl != null) ...[
                const SizedBox(height: 24),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "https://${diaryEntry!.imageUrl!}",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
