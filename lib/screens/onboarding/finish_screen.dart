import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class CongratulationScreen extends HookWidget {
  const CongratulationScreen({super.key});

  ProfileApi get profileApi => getIt<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final isSubmitting = useState(false);

    void goNext() async {
      isSubmitting.value = true;
      try {
        await profileApi.finishUserSetup();
      } catch (e) {
        print("Error finishing user setup: $e");
      } finally {
        isSubmitting.value = false;
        context.push('/calendar');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(onBack: () => Navigator.pop(context)),
      body: Stack(
        children: [
          // Main content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 40), // Top spacing
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF3F3F3F),
                  ),
                ),
                SizedBox(height: 0),
                Text(
                  "MoodBeats",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF9188F7),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Congratulation !",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF9188F7),
                  ),
                ),
                SizedBox(height: 8),
                Text.rich(
                  TextSpan(
                    text: "You’ve done your ",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF3F3F3F),
                    ),
                    children: [
                      TextSpan(
                        text: "Mood&Music",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9188F7),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom-right Next button
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSubmitting.value
                      ? Colors.grey
                      : const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(51),
                  ),
                  minimumSize: const Size(109, 40),
                ),
                onPressed: isSubmitting.value ? null : goNext,
                child: isSubmitting.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text(
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
    );
  }
}
