import 'package:flutter/material.dart';
import 'package:moodbeat/screens/Q2.dart';
import 'package:moodbeat/screens/Q4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Q3());
}

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MoodPreferenceScreen(),
    );
  }
}

class MoodPreferenceScreen extends StatefulWidget {
  const MoodPreferenceScreen({super.key});

  @override
  State<MoodPreferenceScreen> createState() => _MoodPreferenceScreenState();
}

class _MoodPreferenceScreenState extends State<MoodPreferenceScreen> {
  final List<String> genres = [
    "Relaxing & calm🌿🎶",
    "Energetic & happy⚡🎵",
    "Deep & emotional 💔🎧",
    "Surprise me 🎲🎶"
  ];

  // Store only one selected genre
  String? selectedGenre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7), // This represents a back arrow
            size: 32,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (context, animation, secondaryAnimation) => Q2(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(-1.0, 0.0); // เลื่อนจากซ้าย
                  const end = Offset.zero; // จบที่ตำแหน่งปกติ
                  const curve = Curves.easeInOut;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                      position: offsetAnimation, child: child);
                },
              ),
            );
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Skip",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat")),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: List.generate(5, (index) {
                    return Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 5,
                        decoration: BoxDecoration(
                          color: index < 3
                              ? const Color(0xFF9188F7)
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 245,
                    height: 92,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              color: Color(0xFF3F3F3F),
                              fontSize: 36,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'MoodBeats',
                            style: TextStyle(
                              color: Color(0xFF9188F7),
                              fontSize: 36,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 265,
                    height: 36,
                    child: Text(
                      "This will help us create the best experience for you!",
                      style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      "What kind of songs help improve your mood?",
                      style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 50,
                    runSpacing: 16,
                    children: genres.map((genre) {
                      bool isSelected = selectedGenre == genre;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            // Set the selected genre to the clicked one
                            selectedGenre = genre;
                          });
                        },
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF9188F7)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 1,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFF9188F7),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                genre,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : const Color(0xFF9188F7),
                                  fontSize: 15, // Keep the font size constant
                                  fontWeight: isSelected
                                      ? FontWeight.w600 // Bold when selected
                                      : FontWeight
                                          .w400, // Normal when not selected
                                  fontFamily: "Montserrat",
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedGenre == null
                              ? Colors.grey // Disabled color
                              : const Color.fromARGB(
                                  255, 0, 0, 0), // Active color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(51),
                          ),
                          minimumSize: const Size(109, 40),
                        ),
                        onPressed: selectedGenre == null
                            ? null // Disable the button when no genre is selected
                            : () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Q4();
                                }));
                              },
                        child: const Text("Next",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
