import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:moodbeat/core/hooks/playlist_hook.dart';
import 'package:moodbeat/core/hooks/track_hook.dart';
import 'package:moodbeat/home/playlist/playlist.dart';
import 'package:moodbeat/home/playlist/playlist_info.dart';
import 'package:moodbeat/home/review/rate_screen.dart';
import 'package:moodbeat_core/moodbeat_core.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaylistOfTheMonthScreen extends HookWidget {
  final DateTime date;

  const PlaylistOfTheMonthScreen({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = useMemoized(() {
      return DateFormat('yyyy-MM-dd').format(date);
    }, [date]);
    final query = useGetMonthlyPlaylist(formattedDate);
    final playlistImageUrl = useMemoized(() {
      if (query.data?.data?.tracks == null ||
          query.data?.data?.tracks?.isEmpty == true) {
        return 'https://placehold.co/512x512';
      }
      return query.data?.data?.tracks?.first.albumImageUrl ?? '';
    }, [query.data]);
    final tracks = query.data?.data?.tracks;

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
                    description: "Your playlist of the month",
                  ),
                  const SizedBox(height: 24),
                  PlaylistOfTheMonth(
                    tracks: tracks?.toList() ?? [],
                    isLoading: query.isLoading,
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

class PlaylistOfTheMonth extends HookWidget {
  final Iterable<DbFulltrack> tracks;
  final bool isLoading;

  const PlaylistOfTheMonth({
    super.key,
    required this.tracks,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Expanded(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    }

    return Expanded(
      child: ListView.builder(
        itemCount: tracks.length,
        itemBuilder: (context, index) {
          final track = tracks.elementAt(index);
          return SongListItem(
            imageUrl: track.albumImageUrl ?? 'https://placehold.co/52x52',
            title: track.name ?? 'Unknown Title',
            artist: track.artistName ?? 'Unknown Artist',
            trackId: track.id ?? '',
          );
        },
      ),
    );
  }
}
