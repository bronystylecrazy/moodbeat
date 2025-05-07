import 'package:flutter/material.dart';
import 'package:moodbeat/screens/_Q2.dart';
import 'package:moodbeat/screens/_Signin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Q1());
}

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MusicPreferenceScreen(),
    );
  }
}

class MusicPreferenceScreen extends StatefulWidget {
  const MusicPreferenceScreen({super.key});

  @override
  State<MusicPreferenceScreen> createState() => _MusicPreferenceScreenState();
}

class _MusicPreferenceScreenState extends State<MusicPreferenceScreen> {
  final List<String> genres = [
    "🎵 Pop",
    "🪩 Hip-Hop",
    "🤘 Rock",
    "🎉 EDM",
    "🎶 R&B",
    "🤠 Country",
    "🎷 Jazz",
    "🎼 Indie",
    "🎸 Punk",
    "🎹 Classical",
    "🎤 Opera",
    "🎧 Blues"
  ];

  final Set<String> selectedGenres = {};

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
              MaterialPageRoute(builder: (context) => Sigmin()),
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
                          color: index < 1
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
                            text: 'Welcome to',
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
                    width: 234,
                    child: Text(
                      "What kind of music do you like?",
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
                    spacing: 10,
                    runSpacing: 10,
                    children: genres.map((genre) {
                      bool isSelected = selectedGenres.contains(genre);

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedGenres.remove(genre);
                            } else {
                              selectedGenres.add(genre);
                            }
                          });
                        },
                        child: Container(
                          height: 40,
                          // Fixed height for the container
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 8),
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
                          backgroundColor: selectedGenres.isEmpty
                              ? Colors.grey
                              : const Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(51),
                          ),
                          minimumSize: const Size(109, 40),
                        ),
                        onPressed: selectedGenres.isEmpty
                            ? null // Disable button when no genres are selected
                            : () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Q2();
                                }));
                              },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
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
    );
  }
}
