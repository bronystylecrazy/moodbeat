import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/screens/_Q3.dart';
import 'package:moodbeat/screens/_Q5.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/single_selection_chips.dart';
import 'package:moodbeat/screens/onboarding/next_button.dart';

class StressedPreferenceScreen extends HookWidget {
  const StressedPreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = [
      "Sad & slow songs 😔🎶",
      "Chill & relaxing tunes 🌙🎧",
      "Comforting & soothing music 💖🎼",
      "Uplifting & fun tracks 🎉🎵"
    ];

    final selectedGenre = useState<String?>(null);

    void goBack() {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (_, __, ___) => const Q3(),
          transitionsBuilder: (_, animation, __, child) => SlideTransition(
            position: animation.drive(
              Tween(begin: const Offset(-1.0, 0), end: Offset.zero)
                  .chain(CurveTween(curve: Curves.easeInOut)),
            ),
            child: child,
          ),
        ),
      );
    }

    void goNext() {
      context.push("/calendar");
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(onBack: goBack),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const OnboardingProgressBar(currentStep: 4, totalSteps: 5),
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
                    "If you’re sad or stressed, how should the app help you find the perfect songs?",
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleSelectionChips(
                    options: genres,
                    selected: selectedGenre.value,
                    onSelect: (val) => selectedGenre.value = val,
                    spacing: 50,
                    runSpacing: 16,
                  ),
                  const Spacer(),
                  NextButton(
                    enabled: selectedGenre.value != null,
                    onPressed: goNext,
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
