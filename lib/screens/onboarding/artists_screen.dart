import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/core/hooks/artist_hook.dart';
import 'package:moodbeat/screens/onboarding/app_bar_back_and_skip.dart';
import 'package:moodbeat/screens/onboarding/finish_screen.dart';
import 'package:moodbeat/screens/onboarding/intro_header.dart';
import 'package:moodbeat/screens/onboarding/onboarding_progress_bar.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class ArtistsScreen extends HookWidget {
  const ArtistsScreen({super.key});

  ProfileApi get profileApi => getIt<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final isSubmitting = useState(false);
    final selectedIds = useState<Set<String>>({});

    final query = useListArtists();
    final artists = [...?query.data?.data]
      ..sort((a, b) => (a.name ?? '').compareTo(b.name ?? ''));

    void goNext() async {
      if (!selectedIds.value.isNotEmpty) {
        return;
      }

      isSubmitting.value = true;
      final selected = selectedIds.value.toList();
      try {
        await profileApi.clearSelectedArtists();
        await profileApi.selectArtists(
            artists: ProfileSelectArtistsMutation(
                (b) => b.artistIds.addAll(selected)));
      } catch (e) {
        // Handle error
        print("Error selecting artists: $e");
      } finally {
        isSubmitting.value = false;
        // Navigate to the next screen
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (_, __, ___) => const CongratulationScreen(),
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
      isSubmitting.value = false;
    }

    if (query.isLoading || query.isFetching) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarBackAndSkip(onBack: () => Navigator.pop(context)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const OnboardingProgressBar(currentStep: 5, totalSteps: 5),
                const SizedBox(height: 20),
                const IntroHeader(),
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
      appBar: AppBarBackAndSkip(onBack: () => context.pop()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const OnboardingProgressBar(currentStep: 5, totalSteps: 5),
              const SizedBox(height: 20),
              const IntroHeader(),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Who are your favorite artists?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ✅ Continue with your artist grid
              Flexible(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return GridView.builder(
                      itemCount: artists.length,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        final artist = artists.toList()[index];
                        final isSelected =
                            selectedIds.value.contains(artist.id);
                        return GestureDetector(
                          onTap: () {
                            final updated = Set<String>.from(selectedIds.value);
                            if (isSelected) {
                              updated.remove(artist.id);
                            } else {
                              updated.add(artist.id!);
                            }
                            selectedIds.value = updated;
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                if (isSelected)
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                              ],
                              border: Border.all(
                                color: isSelected
                                    ? const Color(0xFF9188F7)
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(artist.imageUrl!),
                                  radius: 36,
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    artist.name ?? '',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          selectedIds.value.isEmpty || isSubmitting.value
                              ? Colors.grey
                              : const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(51),
                      ),
                      minimumSize: const Size(109, 40),
                    ),
                    onPressed: selectedIds.value.isEmpty || isSubmitting.value
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
