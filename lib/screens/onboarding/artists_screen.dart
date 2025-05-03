import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/screens/_Finish.dart';
import 'package:moodbeat/screens/_Q3.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/next_button.dart';

class ArtistsScreen extends HookWidget {
  const ArtistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final artistController = useTextEditingController();

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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Finish()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(onBack: goBack),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const OnboardingProgressBar(currentStep: 5, totalSteps: 5),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IntroHeader(),
                  const SizedBox(height: 20),
                  const Center(
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Who is your favorite artist?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF3F3F3F),
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: artistController,
                    decoration: InputDecoration(
                      hintText: "Type artist name...",
                      filled: true,
                      fillColor: const Color(0xFFF7F5F1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFDDD7C6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF9188F7)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                    ),
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF3F3F3F),
                    ),
                  ),
                  const Spacer(),
                  NextButton(
                    enabled: artistController.text.trim().isNotEmpty,
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
