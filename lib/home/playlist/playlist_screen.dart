import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/core/hooks/track_hook.dart';
import 'package:moodbeat/home/playlist/playlist.dart';
import 'package:moodbeat/home/playlist/playlist_info.dart';
import 'package:moodbeat/home/review/rate_screen.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openSpotifyTrack(String trackId) async {
  final url = Uri.parse('https://open.spotify.com/track/$trackId');
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class PlaylistScreen extends HookWidget {
  final DateTime date;
  final String mood;
  final String description;

  const PlaylistScreen({
    super.key,
    required this.mood,
    required this.date,
    this.description = 'High-energy beats to match your unstoppable mood!',
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = useMemoized(() {
      return DateFormat('yyyy-MM-dd').format(date);
    }, [date]);
    final query = useGetSuggestedTracks(mood, formattedDate);
    print(query.data);
    final showRateScreen = useState(false);
    final playlistImageUrl = useMemoized(() {
      return query.data?.data?.first.album?.images?.first?.url ?? '';
    }, [query.data]);
    print("Playlist image URL: $playlistImageUrl");
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    final slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    void toggleRateScreen() {
      showRateScreen.value = !showRateScreen.value;
      if (showRateScreen.value) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF9188F7),
                  Colors.transparent,
                ],
                stops: [0.0, 0.7],
              ),
            ),
          ),
          SafeArea(
            child: showRateScreen.value
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: toggleRateScreen,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 273,
                            height: 273,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  16), // 👈 Add this for rounding
                              image: DecorationImage(
                                image: NetworkImage(playlistImageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                            clipBehavior:
                                Clip.antiAlias, // 👈 Ensures clipping happens
                          ),
                        ),
                        const SizedBox(height: 24),
                        PlaylistInfo(
                          date: date,
                          description: description,
                        ),
                        const SizedBox(height: 24),
                        Playlist(
                          tracks: query.data?.data ?? [],
                          isLoading: query.isLoading,
                        ),
                      ],
                    ),
                  ),
          ),
          if (showRateScreen.value)
            RateScreen(
              onClose: toggleRateScreen,
              imageUrl: playlistImageUrl,
              playlistDate: date,
            ),
        ],
      ),
    );
  }
}
