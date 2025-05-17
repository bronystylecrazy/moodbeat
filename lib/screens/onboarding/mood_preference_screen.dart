import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/core/hooks/profile_hook.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/music_preference_screen.dart';
import 'package:moodbeat/screens/onboarding/next_button.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';
import 'package:moodbeat/screens/onboarding/stress_preference_screen.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class MoodPreferenceScreen extends HookWidget {
  const MoodPreferenceScreen({super.key});

  ProfileApi get profileApi => getIt<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final query = useGetMoodPresets();
    final isSubmitting = useState(false);
    final selectedGenres = useState<Set<String>>({});
    final scrollController = useScrollController();

    final moodPresets = useMemoized(() {
      final data = query.data?.data ?? [];
      final sorted = [...data];
      sorted.sort((a, b) {
        final aLabel = a.label?.toLowerCase() ?? '';
        final bLabel = b.label?.toLowerCase() ?? '';
        if (aLabel == 'surprise') return 1;
        if (bLabel == 'surprise') return -1;
        return aLabel.compareTo(bLabel);
      });
      return sorted;
    }, [query.data]);

    void goBack() {
      context.pop();
    }

    void goNext() async {
      if (selectedGenres.value.isEmpty) return;
      isSubmitting.value = true;

      final selected = selectedGenres.value.toList();
      try {
        await profileApi.clearDefaultPresets();
        await profileApi.selectDefaultPreset(
          presetId: ProfileSelectDefaultPresetMutation(
            (b) => b.presetId.addAll(selected),
          ),
        );
      } catch (e) {
        print("Error selecting default presets: $e");
      } finally {
        context.push("/onboarding/q3");
        isSubmitting.value = false;
      }
    }

    // 👉 Show full loading spinner during API fetch
    if (query.isLoading) {
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarBackAndSkip(onBack: goBack),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const OnboardingProgressBar(currentStep: 3, totalSteps: 5),
                const SizedBox(height: 20),
                const IntroHeader(),
                const SizedBox(height: 20),
                const Text(
                  "What kind of songs help improve your mood?",
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBackAndSkip(onBack: goBack),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const OnboardingProgressBar(currentStep: 3, totalSteps: 5),
              const SizedBox(height: 20),
              const IntroHeader(),
              const SizedBox(height: 20),
              const Text(
                "What kind of songs help improve your mood?",
                style: TextStyle(
                  color: Color(0xFF3F3F3F),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),

              /// 🔽 Scrollable chips area
              Expanded(
                child: Scrollbar(
                  controller: scrollController,
                  thumbVisibility: true,
                  thickness: 4,
                  radius: const Radius.circular(10),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      width: double.infinity,
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: moodPresets.map((genre) {
                          final isSelected =
                              selectedGenres.value.contains(genre.id);

                          return GestureDetector(
                            onTap: isSubmitting.value
                                ? null
                                : () {
                                    final updated =
                                        Set<String>.from(selectedGenres.value);
                                    if (isSelected) {
                                      updated.remove(genre.id);
                                    } else {
                                      updated.add(genre.id!);
                                    }
                                    selectedGenres.value = updated;
                                  },
                            child: Opacity(
                              opacity: isSubmitting.value ? 0.4 : 1.0,
                              child: Container(
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
                                child: Text(
                                  "${genre.label} ${genre.emoji}",
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xFF9188F7),
                                    fontSize: 15,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          selectedGenres.value.isEmpty || isSubmitting.value
                              ? Colors.grey
                              : const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(51),
                      ),
                      minimumSize: const Size(109, 40),
                    ),
                    onPressed:
                        selectedGenres.value.isEmpty || isSubmitting.value
                            ? null
                            : goNext,
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

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
