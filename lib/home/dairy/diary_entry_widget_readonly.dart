import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/home/dairy/date_card.dart';
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
      return const Center(child: CircularProgressIndicator());
    }

    final entryDate = DateTime.parse(
      diaryEntry!.createdAt ?? DateTime.now().toString(),
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 🟡 Yellow diary content box
            Container(
              width: double.infinity,
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
                  // 📅 Date header
                  Text(
                    DateFormat('dd MMMM yyyy').format(entryDate),
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontFamily: AppTextStyles.primaryFontFamily,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.40,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // 😊 Mood selector
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

                  // 📝 Diary text (no overflow)
                  if (diaryEntry!.content?.isNotEmpty == true)
                    Text(
                      diaryEntry!.content!,
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 20,
                        height: 1.4,
                        fontFamily: AppTextStyles.primaryFontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  // 🖼️ Optional image with 60% width
                  if (diaryEntry!.imageUrl != null) ...[
                    const SizedBox(height: 24),
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            "https://${diaryEntry!.imageUrl!}",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 24),

// ✅ Deluxe white reflection box
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "📝 Personal Reflection",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppTextStyles.primaryFontFamily,
                      color: Color(0xFF3F3F3F),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    diaryEntry?.advice ?? 'No advice provided.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppTextStyles.primaryFontFamily,
                      color: Color(0xFF666666),
                    ),
                  ),
                ],
              ),
            ),
            // 📆 DateCard shown below yellow container
            const SizedBox(height: 24),
            DateCard(
              onTap: () {
                context.push("/playlist_of_the_month", extra: {
                  'date': DateTime.parse(diaryEntry!.createdAt!),
                });
              },
              entryDate: entryDate,
            ),
          ],
        ),
      ),
    );
  }
}
