import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat_core/moodbeat_core.dart';
import 'package:url_launcher/url_launcher.dart';

class Playlist extends HookWidget {
  final Iterable<SpotifyFullTrack> tracks;
  final bool isLoading;

  const Playlist({
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
            imageUrl: track.album?.images?.isNotEmpty == true
                ? track.album!.images!.first.url ?? ''
                : 'https://placehold.co/52x52',
            title: track.name ?? 'Unknown Title',
            artist: track.artists?.map((a) => a.name).join(', ') ??
                'Unknown Artist',
            trackId: track.id ?? '',
          );
        },
      ),
    );
  }
}

class SongListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;
  final String trackId;

  const SongListItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.artist,
    required this.trackId,
  }) : super(key: key);

  Future<void> _openSpotifyTrack(BuildContext context) async {
    final url = Uri.parse('https://open.spotify.com/track/$trackId');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Unable to open Spotify track.'),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final maxTextWidth = MediaQuery.of(context).size.width - 190;

    return InkWell(
      onTap: () => _openSpotifyTrack(context),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: maxTextWidth,
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: maxTextWidth,
                      child: Text(
                        artist,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFFCECDCD),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              iconSize: 20,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 32,
              ),
              onPressed: () => _openSpotifyTrack(context),
            ),
          ],
        ),
      ),
    );
  }
}
