import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MoodReportApp());
}

class MoodReportApp extends StatelessWidget {
  const MoodReportApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MonthlyReportPage(),
    );
  }
}

class MonthlyReportPage extends StatelessWidget {
  MonthlyReportPage({super.key});

  final List<Color> moodColors = [
    Color(0xFFFDF0A0),
    Color(0xFFF5B7B1),
    Color(0xFFE6C3F5),
    Color(0xFFF5C3D1),
    Color(0xFFD0F5C3),
    Color(0xFFF59A73),
    Color(0xFFD0EAFB),
    Color(0xFFC3D6F5),
  ];

  final List<FlSpot> moodSpots = [
    FlSpot(1, 1),
    FlSpot(5, 7),
    FlSpot(10, 2),
    FlSpot(15, 3),
    FlSpot(20, 4),
    FlSpot(25, 8),
    FlSpot(30, 5),
  ];

  final List<int> moodIndices = [0, 6, 1, 2, 3, 7, 4];

  final moodData = [
    {'emoji': '😊', 'color': Color(0xFFFDF0A0), 'percent': 60},
    {'emoji': '😡', 'color': Color(0xFFF5B7B1), 'percent': 25},
    {'emoji': '😵', 'color': Color(0xFFE6C3F5), 'percent': 5},
    {'emoji': '😰', 'color': Color(0xFFD0EAFB), 'percent': 5},
    {'emoji': '😢', 'color': Color(0xFFC3D6F5), 'percent': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7),
            size: 32,
          ),
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mood Summary Box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFFBF0), // 🟨 Updated color
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:
                        moodData.map((mood) {
                          return Column(
                            children: [
                              Text(
                                mood['emoji'] as String,
                                style: const TextStyle(fontSize: 28),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${mood['percent']}%",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children:
                        moodData.map((mood) {
                          return Expanded(
                            flex: mood['percent'] as int,
                            child: Container(
                              height: 15,
                              decoration: BoxDecoration(
                                color: mood['color'] as Color,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            const Text(
              'Mood Graph',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),

            // Mood Graph Box
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFFFFBF0), // 🟨 Updated color
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(moodColors.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: moodColors[index],
                        ),
                      );
                    }),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF8EE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: LineChart(
                          LineChartData(
                            minX: 1,
                            maxX: 30,
                            minY: 0,
                            maxY: 9,
                            gridData: FlGridData(show: true),
                            borderData: FlBorderData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 5,
                                  getTitlesWidget: (value, _) {
                                    if (value == 1 || value % 5 == 0) {
                                      return Text(
                                        '${value.toInt()} Jun',
                                        style: const TextStyle(fontSize: 10),
                                      );
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                spots: moodSpots,
                                isCurved: true,
                                barWidth: 2,
                                color: Colors.deepPurple,
                                dotData: FlDotData(
                                  getDotPainter: (
                                    spot,
                                    percent,
                                    barData,
                                    index,
                                  ) {
                                    return FlDotCirclePainter(
                                      radius: 4,
                                      color: moodColors[moodIndices[index]],
                                      strokeWidth: 1.5,
                                      strokeColor: Colors.white,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Summarise',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Summarise Box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFFBF0), // 🟨 Updated color
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Your month was filled with joy! 🌟 Some moments of worry came up, '
                'but that’s part of growth. Stay positive and keep shining! ✨💛',
                style: TextStyle(fontSize: 16, height: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
