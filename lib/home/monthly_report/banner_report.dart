import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

extension IndexedMap<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T item) f) {
    var index = 0;
    return map((item) => f(index++, item));
  }
}

class TopEmotionBar extends StatelessWidget {
  final Map<String, double> emotionPercentages;
  double? offset = 72;

  TopEmotionBar({super.key, required this.emotionPercentages, this.offset});

  static const Map<String, String> moodImages = {
    "Joy": "assets/images/joy.png",
    "Surprise": "assets/images/surprise.png",
    "Expecting": "assets/images/expecting.png",
    "Trust": "assets/images/trust.png",
    "Disgust": "assets/images/disgust.png",
    "Anger": "assets/images/angry.png",
    "Fear": "assets/images/fear.png",
    "Sad": "assets/images/sad.png",
  };

  static const Map<String, Color> moodColors = {
    "Joy": Color(0xFFFDE890),
    "Surprise": Color(0xFFFF9A82),
    "Expecting": Color(0xFFEFC2FF),
    "Trust": Color.fromARGB(255, 255, 206, 246),
    "Disgust": Color.fromARGB(255, 186, 251, 180),
    "Anger": Color(0xFFFFC0CB),
    "Fear": Color(0xFF90CAF9),
    "Sad": Color(0xFFA1C5FF),
  };

  @override
  Widget build(BuildContext context) {
    final sortedEmotions = emotionPercentages.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final top5Emotions = sortedEmotions.take(5).toList();
    final total = top5Emotions.fold(0.0, (sum, e) => sum + e.value);
    final maxBarWidth = MediaQuery.of(context).size.width - (offset ?? 72);

    final adjustedWidths =
        top5Emotions.map((e) => (e.value / total) * maxBarWidth).toList();

    if (emotionPercentages.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFDF9F1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: const [
            Text(
              "No emotion data available 💤",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
                color: Color(0xFF707070),
              ),
            ),
            SizedBox(height: 16),
            Icon(Icons.insert_chart_outlined,
                size: 40, color: Color(0xFFCCCCCC)),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFDF9F1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: top5Emotions.map((entry) {
              final isTop = entry == top5Emotions.first;
              return Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      moodImages[entry.key] ?? '',
                      height: isTop ? 44 : 37,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${entry.value.toStringAsFixed(0)}%",
                      style: TextStyle(
                        fontSize: isTop ? 14 : 10,
                        fontWeight: isTop ? FontWeight.w700 : FontWeight.w500,
                        color: const Color(0xFF101010),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Row(
            children: top5Emotions.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final color = moodColors[item.key] ?? Colors.grey;
              final width = adjustedWidths[index];

              return Container(
                width: width,
                height: 30,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(index == 0 ? 21 : 0),
                    right: Radius.circular(
                        index == top5Emotions.length - 1 ? 21 : 0),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ReportBanner extends HookWidget {
  final DateTime date;
  final String? startDate;
  final String? endDate;
  final Map<String, double> emotionPercentages;

  const ReportBanner({
    super.key,
    required this.date,
    this.startDate,
    this.endDate,
    required this.emotionPercentages,
  });

  static const Map<String, String> moodImages = {
    "Joy": "assets/images/joy.png",
    "Surprise": "assets/images/surprise.png",
    "Expecting": "assets/images/expecting.png",
    "Trust": "assets/images/trust.png",
    "Disgust": "assets/images/disgust.png",
    "Anger": "assets/images/angry.png",
    "Fear": "assets/images/fear.png",
    "Sad": "assets/images/sad.png",
  };

  static const Map<String, Color> moodColors = {
    "Joy": Color(0xFFFDE890),
    "Surprise": Color(0xFFFF9A82),
    "Expecting": Color(0xFFEFC2FF),
    "Trust": Color.fromARGB(255, 255, 206, 246),
    "Disgust": Color.fromARGB(255, 186, 251, 180),
    "Anger": Color(0xFFFFC0CB),
    "Fear": Color(0xFF90CAF9),
    "Sad": Color(0xFFA1C5FF),
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque, // Makes the whole area tappable
            onTap: () {
              context.push("/monthly_report", extra: {
                "startDate": startDate,
                "endDate": endDate,
                "emotionPercentages": emotionPercentages,
              });
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Monthly Report',
                    style: TextStyle(
                      color: Color(0xFF101010),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xFF101010),
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          TopEmotionBar(
            emotionPercentages: emotionPercentages,
          ),
        ],
      ),
    );
  }
}
