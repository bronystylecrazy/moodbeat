import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/core/hooks/genre_hook.dart';
import 'package:moodbeat/screens/_Signin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPreferenceScreen(),
    );
  }
}

class MusicPreferenceScreen extends HookWidget {
  const MusicPreferenceScreen({super.key});

  ProfileApi get profileApi => getIt.get<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final query = useListSongGenres();
    final selectedGenres = useState<Set<String>>({});
    final isSubmitting = useState(false);

    void handleSaveSelectedGenres() async {
      if (selectedGenres.value.isEmpty) return;

      isSubmitting.value = true;

      final selectedGenresList = selectedGenres.value.toList();
      await profileApi.clearSongGenres();
      final builder = ProfileSelectSongGenresMutation(
          (b) => b.genreId.addAll(selectedGenresList.toList()));
      await profileApi.selectSongGenres(genreId: builder);
      isSubmitting.value = false;
      context.push("/onboarding/q1");
    }

    final genres = query.data?.data ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7),
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
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: query.isLoading
          ? const Center(child: CircularProgressIndicator())
          : query.isError
              ? Center(
                  child: Text(
                    "Failed to load genres",
                    style: TextStyle(color: Colors.red[300]),
                  ),
                )
              : Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
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
                                final isSelected =
                                    selectedGenres.value.contains(genre.id);

                                return GestureDetector(
                                  onTap: isSubmitting.value
                                      ? null
                                      : () {
                                          final updated = Set<String>.from(
                                              selectedGenres.value);
                                          if (isSelected) {
                                            updated.remove(genre.id);
                                          } else {
                                            updated.add(genre.id!);
                                          }
                                          selectedGenres.value = updated;
                                        },
                                  child: Opacity(
                                    opacity: isSubmitting.value ? 0.6 : 1.0,
                                    child: Container(
                                      height: 40,
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
                                        children: [
                                          Text(
                                            genre.name ?? '',
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
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, right: 20),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: selectedGenres
                                                .value.isEmpty ||
                                            isSubmitting.value
                                        ? Colors.grey
                                        : const Color.fromARGB(255, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(51),
                                    ),
                                    minimumSize: const Size(109, 40),
                                  ),
                                  onPressed: selectedGenres.value.isEmpty ||
                                          isSubmitting.value
                                      ? null
                                      : handleSaveSelectedGenres,
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
                      ),
                    ),
                  ],
                ),
    );
  }
}
