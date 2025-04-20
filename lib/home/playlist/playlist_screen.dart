// lib/home/playlist/playlist_screen.dart
import 'package:flutter/material.dart';
import 'package:moodbeat/home/playlist/playlist.dart';
import 'package:moodbeat/home/playlist/playlist_info.dart';
import 'package:moodbeat/home/review/rate_screen.dart'; // Import the RateScreen
import 'package:intl/intl.dart';

class PlaylistScreen extends StatefulWidget {
  final DateTime date;
  final String description;

  const PlaylistScreen({
    Key? key,
    required this.date,
    this.description = 'High-energy beats to match your unstoppable mood!',
  }) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  bool _showRateScreen = false;
  String _playlistImageUrl =
      "assets/images/playlist_cover.png"; // Add playlist image url
  //String _playlistName = "My Playlist"; // Remove playlist name

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleRateScreen() {
    setState(() {
      _showRateScreen = !_showRateScreen;
      if (_showRateScreen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: _showRateScreen
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
                            onPressed: () {
                              _toggleRateScreen();
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 273,
                            height: 273,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(_playlistImageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        PlaylistInfo(
                          date: widget.date,
                          description: widget.description,
                        ),
                        const SizedBox(height: 24),
                        const Playlist(),
                      ],
                    ),
                  ),
          ),
          if (_showRateScreen)
            RateScreen(
              onClose: () {
                _toggleRateScreen();
              },
              imageUrl: _playlistImageUrl, // Pass the image URL here
              playlistDate: widget.date, // Pass the playlist date here
            ),
        ],
      ),
    );
  }
}
