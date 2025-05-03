import 'package:flutter/material.dart';
import 'package:moodbeat/screens/_Finish.dart';
import 'package:moodbeat/screens/_Q3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Q5());
}

class Q5 extends StatelessWidget {
  const Q5({super.key});

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
    "Sad & slow songs 😔🎶",
    "Chill & relaxing tunes 🌙🎧",
    "Comforting & soothing music 💖🎼",
    "Uplifting & fun tracks 🎉🎵"
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
                pageBuilder: (context, animation, secondaryAnimation) => Q3(),
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
                          color: index < 5
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
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Who is your favorite artist?",
                        style: TextStyle(
                          color: Color(0xFF3F3F3F),
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(51),
                          ),
                          minimumSize: const Size(109, 40),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Finish();
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
