import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/home/review/rate_reasons_data.dart';
import 'package:moodbeat/main.dart';

class ReviewScreen extends HookWidget {
  final int initialRating;
  final String imageUrl;
  final DateTime playlistDate;
  final VoidCallback onClose;

  const ReviewScreen({
    super.key,
    required this.initialRating,
    required this.imageUrl,
    required this.playlistDate,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final selectedRating = useState(initialRating);
    final selectedReasons = useState<List<String>>([]);
    final reviewController = useTextEditingController();
    final characterCount = useState(0);
    const maxCharacterCount = 300;

    useEffect(() {
      void listener() {
        final text = reviewController.text;
        if (text.length <= maxCharacterCount) {
          characterCount.value = text.length;
        } else {
          reviewController.text = text.substring(0, maxCharacterCount);
          reviewController.selection = TextSelection.fromPosition(
            TextPosition(offset: maxCharacterCount),
          );
        }
      }

      reviewController.addListener(listener);
      return () => reviewController.removeListener(listener);
    }, [reviewController]);

    final reasons = RateReasonsData.reasons[selectedRating.value] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              // Close Button
              Positioned(
                right: 0,
                top: 67,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: AppColors.defualtColor,
                  ),
                  onPressed: onClose,
                  child: const Icon(Icons.close, size: 32),
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 67),
                          Center(
                            child: Text(
                              'Rate your experience',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 20,
                                fontFamily: AppTextStyles.primaryFontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Container(
                              width: 152,
                              height: 152,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(imageUrl),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: Text(
                              DateFormat('dd MMMM yyyy').format(playlistDate),
                              style: const TextStyle(
                                color: AppColors.textColor,
                                fontSize: 14,
                                fontFamily: AppTextStyles.primaryFontFamily,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    selectedRating.value = index + 1;
                                    selectedReasons.value = [];
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Image.asset(
                                      index < selectedRating.value
                                          ? 'assets/images/star_filled.png'
                                          : 'assets/images/star.png',
                                      width: 24,
                                      height: 24,
                                      color: AppColors.ascent,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Wrap(
                              spacing: 12,
                              runSpacing: 16,
                              children: reasons.map((reason) {
                                final isSelected =
                                    selectedReasons.value.contains(reason);
                                return GestureDetector(
                                  onTap: () {
                                    final updated = [...selectedReasons.value];
                                    if (isSelected) {
                                      updated.remove(reason);
                                    } else {
                                      updated.add(reason);
                                    }
                                    selectedReasons.value = updated;
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? AppColors.defualtColor
                                          : AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: AppColors.defualtColor,
                                        width: 1,
                                      ),
                                    ),
                                    child: Text(
                                      reason,
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : AppColors.defualtColor,
                                        fontSize: 12,
                                        fontFamily:
                                            AppTextStyles.primaryFontFamily,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Write review',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 18,
                                fontFamily: AppTextStyles.primaryFontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFBF0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  TextField(
                                    controller: reviewController,
                                    maxLines: null,
                                    expands: true,
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: const InputDecoration(
                                      hintText: 'Tell us more',
                                      hintStyle: TextStyle(
                                        color: AppColors.disableText,
                                        fontSize: 14,
                                        fontFamily:
                                            AppTextStyles.primaryFontFamily,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(16.0),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 16,
                                    right: 16,
                                    child: Text(
                                      '${characterCount.value}/$maxCharacterCount',
                                      style: const TextStyle(
                                        color: AppColors.disableText,
                                        fontSize: 12,
                                        fontFamily:
                                            AppTextStyles.primaryFontFamily,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Thank you for your feedback!"),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 2),
                            ),
                          );

                          Future.delayed(
                              const Duration(milliseconds: 500), onClose);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.button,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: AppTextStyles.primaryFontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
