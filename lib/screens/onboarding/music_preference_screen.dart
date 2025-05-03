import 'package:flutter/material.dart';
import 'package:moodbeat/screens/_Signin.dart';
import 'package:moodbeat/screens/_Q2.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/genre_selection_grid.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/next_button.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';

class MusicPreferenceScreen extends StatefulWidget {
  const MusicPreferenceScreen({super.key});

  @override
  State<MusicPreferenceScreen> createState() => _MusicPreferenceScreenState();
}

class _MusicPreferenceScreenState extends State<MusicPreferenceScreen> {
  final Set<String> selectedGenres = {};

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

  void toggleGenre(String genre) {
    setState(() {
      selectedGenres.contains(genre)
          ? selectedGenres.remove(genre)
          : selectedGenres.add(genre);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(onBack: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Sigmin()),
        );
      }),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const OnboardingProgressBar(currentStep: 1, totalSteps: 5),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IntroHeader(),
                  const SizedBox(height: 20),
                  const Text(
                    "What kind of music do you like?",
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GenreSelectionGrid(
                    genres: genres,
                    selectedGenres: selectedGenres,
                    onTapGenre: toggleGenre,
                  ),
                  const Spacer(),
                  NextButton(
                    enabled: selectedGenres.isNotEmpty,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Q2()),
                      );
                    },
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
