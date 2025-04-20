// lib/home/review/review_screen.dart
import 'package:flutter/material.dart';
import 'package:moodbeat/main.dart';
import 'package:moodbeat/home/review/rate_reasons_data.dart';
import 'package:intl/intl.dart';

class ReviewScreen extends StatefulWidget {
  final int initialRating;
  final String imageUrl;
  final DateTime playlistDate;
  final VoidCallback onClose; // Add the onClose callback

  const ReviewScreen({
    Key? key,
    required this.initialRating,
    required this.imageUrl,
    required this.playlistDate,
    required this.onClose, // Add the onClose callback
  }) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<String> _selectedReasons = [];
  late int _selectedRating;
  final TextEditingController _reviewController = TextEditingController();
  int _characterCount = 0;
  final int _maxCharacterCount = 300;

  @override
  void initState() {
    super.initState();
    _selectedRating = widget.initialRating;
    _reviewController.addListener(_updateCharacterCount);
  }

  @override
  void dispose() {
    _reviewController.removeListener(_updateCharacterCount);
    _reviewController.dispose();
    super.dispose();
  }

  void _updateCharacterCount() {
    if (_reviewController.text.length <= _maxCharacterCount) {
      setState(() {
        _characterCount = _reviewController.text.length;
      });
    } else {
      _reviewController.text =
          _reviewController.text.substring(0, _maxCharacterCount);
      _reviewController.selection =
          TextSelection.fromPosition(TextPosition(offset: _maxCharacterCount));
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> reasons = RateReasonsData.reasons[_selectedRating] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            // Close Button (Top Right)
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
                onPressed: widget.onClose, // Call the onClose callback
                child: const Icon(
                  Icons.close,
                  size: 32,
                ),
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
                                image: AssetImage(widget.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Center(
                          child: Text(
                            DateFormat('dd MMMM yyyy')
                                .format(widget.playlistDate),
                            style: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14,
                              fontFamily: AppTextStyles.primaryFontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Display the selected stars
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(5, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedRating = index + 1;
                                    _selectedReasons
                                        .clear(); // Clear selected reasons when rating changes
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Image.asset(
                                    index < _selectedRating
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
                            // Use Wrap instead of GridView
                            spacing: 12,
                            // Horizontal spacing between items
                            runSpacing: 16,
                            // Vertical spacing between lines
                            children: reasons.map((reason) {
                              final isSelected =
                                  _selectedReasons.contains(reason);
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isSelected) {
                                      _selectedReasons.remove(reason);
                                    } else {
                                      _selectedReasons.add(reason);
                                    }
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  // Add padding
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
                                    textAlign: TextAlign.center,
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
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFBF0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                TextField(
                                  controller: _reviewController,
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
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text(
                                      '$_characterCount/$_maxCharacterCount',
                                      style: const TextStyle(
                                        color: AppColors.disableText,
                                        fontSize: 12,
                                        fontFamily:
                                            AppTextStyles.primaryFontFamily,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: widget.onClose, // Use the onClose callback
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
    );
  }
}
