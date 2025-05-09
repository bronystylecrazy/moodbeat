import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/screens/_Q1.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/single_selection_chips.dart';
import 'package:moodbeat/screens/onboarding/next_button.dart';
import 'package:moodbeat/screens/onboarding/single_selection_strings.dart';

class MusicExperienceScreen extends StatefulWidget {
  const MusicExperienceScreen({super.key});

  @override
  State<MusicExperienceScreen> createState() => _MusicExperienceScreenState();
}

class _MusicExperienceScreenState extends State<MusicExperienceScreen> {
  final List<String> genres = [
    "Genre 🎶🎸",
    "Artist 🎤🎵",
    "Explore new songs 🔍🎧",
  ];

  String? selectedGenre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(
        onBack: () => Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (_, __, ___) => const Q1(),
            transitionsBuilder: (_, animation, __, child) => SlideTransition(
              position: animation.drive(
                Tween(begin: const Offset(-1.0, 0), end: Offset.zero)
                    .chain(CurveTween(curve: Curves.easeInOut)),
              ),
              child: child,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const OnboardingProgressBar(currentStep: 2, totalSteps: 5),
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
                    "How should the app recommend songs for your mood?",
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleSelectionStrings(
                    options: genres,
                    selected: selectedGenre,
                    onSelect: (value) => setState(() {
                      selectedGenre = value;
                    }),
                  ),
                  const Spacer(),
                  NextButton(
                      enabled: selectedGenre != null,
                      onPressed: () => context.push("/onboarding/q2")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
