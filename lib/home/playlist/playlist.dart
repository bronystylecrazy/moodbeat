// lib/home/playlist/playlist.dart
import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SongListItem(
            imageUrl: "https://placehold.co/52x53",
            title: 'Kill Bill',
            artist: 'SZA',
          ),
          SongListItem(
            imageUrl: "https://placehold.co/52x52",
            title: 'Blinding Lights',
            artist: 'The Weeknd',
          ),
          SongListItem(
            imageUrl: "https://placehold.co/52x52",
            title: 'Sunflower',
            artist: 'Post Malone & Swae Lee',
          ),
          SongListItem(
            imageUrl: "https://placehold.co/52x52",
            title: 'Golden Hour',
            artist: 'JVKE',
          ),
          SongListItem(
            imageUrl: "https://placehold.co/52x52",
            title: 'BIRD OF A FEATHER',
            artist: 'Billie Eilish',
          ),
          SongListItem(
            imageUrl: "https://placehold.co/52x52",
            title: 'Mine',
            artist: 'Taylor Swift',
          ),
        ],
      ),
    );
  }
}

class SongListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;

  const SongListItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.artist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    artist,
                    style: const TextStyle(
                      color: Color(0xFFCECDCD),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }
}
