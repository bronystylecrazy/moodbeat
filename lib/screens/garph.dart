import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbeat/core/hooks/diary_hook.dart';
import 'package:moodbeat/home/monthly_report/banner_report.dart';

class MonthlyReportPage extends HookWidget {
  final Map<String, double> emotionPercentages;
  final String startDate;
  final String endDate;

  const MonthlyReportPage({
    super.key,
    required this.emotionPercentages,
    required this.startDate,
    required this.endDate,
  });

  static const List<String> moodOrder = [
    "sad",
    "fear",
    "anger",
    "disgust",
    "trust",
    "expecting",
    "surprise",
    "joy",
  ];
  static const Map<String, String> moodImages = {
    "joy": "assets/images/joy.png",
    "surprise": "assets/images/surprise.png",
    "expecting": "assets/images/expecting.png",
    "trust": "assets/images/trust.png",
    "disgust": "assets/images/disgust.png",
    "anger": "assets/images/angry.png",
    "fear": "assets/images/fear.png",
    "sad": "assets/images/sad.png",
  };

  static const Map<String, Color> moodColors = {
    "joy": Color(0xFFFDF0A0),
    "anger": Color(0xFFF5B7B1),
    "surprise": Color(0xFFE6C3F5),
    "expecting": Color(0xFFF5C3D1),
    "trust": Color(0xFFD0F5C3),
    "disgust": Color(0xFFF59A73),
    "fear": Color(0xFFD0EAFB),
    "sad": Color(0xFFC3D6F5),
  };

  @override
  Widget build(BuildContext context) {
    final diaryQuery = useListDiaryEntriesByDateRange(startDate, endDate);
    final entries = diaryQuery?.data?.data ?? [];
    final moodData = moodOrder.map((mood) {
      return {
        'key': mood,
        'image': moodImages[mood] ?? '',
        'color': moodColors[mood] ?? Colors.grey,
        'percent': emotionPercentages[mood]?.toInt() ?? 0,
      };
    }).toList();

    final moodSpots = entries
        .where(
            (entry) => moodOrder.contains(entry.emotion?.toLowerCase() ?? ''))
        .map((entry) {
      final day = DateTime.parse(entry.entryDate!).day.toDouble();
      final moodKey = entry.emotion!.toLowerCase();
      final moodLevel = (moodOrder.indexOf(moodKey) + 1)
          .clamp(1, moodOrder.length)
          .toDouble();
      return FlSpot(day, moodLevel);
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleLeft,
              color: Color(0xFF9188F7), size: 32),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Monthly Report",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: diaryQuery?.isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopEmotionBar(
                      emotionPercentages: emotionPercentages,
                      offset: 80,
                    ),
                    const SizedBox(height: 25),
                    const Text('Mood Graph',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Montserrat")),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFBF0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                        height: 280,
                        child: LineChart(
                          LineChartData(
                            minX: 1,
                            maxX: 30,
                            minY: 0,
                            maxY: moodOrder.length.toDouble() + 1,
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: true,
                              drawHorizontalLine: true,
                              getDrawingHorizontalLine: (_) => FlLine(
                                color: Colors.grey.withOpacity(0.2),
                                strokeWidth: 1,
                              ),
                              getDrawingVerticalLine: (_) => FlLine(
                                color: Colors.grey.withOpacity(0.2),
                                strokeWidth: 1,
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 5,
                                  getTitlesWidget: (value, _) {
                                    if (value == 1 || value % 5 == 0) {
                                      return Text('${value.toInt()} Jun',
                                          style: const TextStyle(fontSize: 10));
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 28,
                                  getTitlesWidget: (value, _) {
                                    if (value < 1 || value > moodOrder.length) {
                                      return const SizedBox.shrink();
                                    }
                                    final moodKey =
                                        moodOrder[value.toInt() - 1];
                                    final color =
                                        moodColors[moodKey] ?? Colors.grey;
                                    return Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: color,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                spots: moodSpots,
                                isCurved: false,
                                barWidth: 2,
                                color: Colors.deepPurple,
                                dotData: FlDotData(
                                  getDotPainter: (spot, _, __, index) {
                                    final moodKey = entries
                                            .toList()[index]
                                            .emotion
                                            ?.toLowerCase() ??
                                        '';
                                    final color =
                                        moodColors[moodKey] ?? Colors.grey;

                                    return FlDotCirclePainter(
                                      radius: 4,
                                      color: color,
                                      strokeWidth: 1.5,
                                      strokeColor: Colors.white,
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text('Summarise',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Montserrat")),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFBF0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Your month was filled with joy! 🌟 Some moments of anger came up, '
                        'but that’s part of growth. Stay excited, face fears with confidence, and keep shining! ✨💛',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.4,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
    );
  }
}
