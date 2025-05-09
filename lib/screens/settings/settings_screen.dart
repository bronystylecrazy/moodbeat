import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/screens/settings/hide_artist.dart';
import 'package:moodbeat/screens/settings/utils.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = useState('profile');
    final selectedLanguage = useState('EN');

    return Scaffold(
      // ✅ Floating action button
      floatingActionButton: SizedBox(
        height: 75,
        width: 75,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
          child: const Icon(Icons.add, size: 60, color: Colors.white),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ✅ Bottom navigation bar with backdrop blur
      bottomNavigationBar: Stack(
        children: [
          // This will blur whatever is behind it
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                height: 80 + MediaQuery.of(context).padding.bottom,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8), // blackdrop tint
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
            ),
          ),

          // Transparent BottomAppBar on top of the blurred layer
          BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            color: Colors.transparent, // 👈 must be transparent for blur
            elevation: 0,
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.home_rounded,
                        size: 36, color: Colors.grey),
                    onPressed: () {
                      // Go to Home
                      context.push("/calendar");
                    },
                  ),
                  const SizedBox(width: 0),
                  IconButton(
                    icon: const Icon(Icons.account_circle_rounded,
                        size: 36, color: Colors.black),
                    onPressed: () {
                      // Go to Profile
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 75),
        children: [
          const ProfileSection(),
          const SizedBox(height: 24),
          // // const SectionTitle('Customisation'),
          // ListTileItem(
          //   icon: Icons.text_fields,
          //   title: 'Font Style',
          //   subtitle: 'Default',
          //   onTap: () => print('Font Style'),
          // ),
          // const ListTileItem(
          //     icon: Icons.wallpaper, title: 'Background', subtitle: 'Default'),
          const SectionTitle('Setting'),
          NextTile(
            icon: Icons.music_note,
            title: 'Music Preference',
            onTap: () => print('Font Style'),
          ),
          NextTile(
            icon: Icons.person_off,
            title: 'Hide Artist',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HideArtistScreen()),
              );
            },
          ),
          // LanguageTile(
          //   selected: selectedLanguage.value,
          //   onChange: (lang) => selectedLanguage.value = lang,
          // ),
          const NotificationToggle(),
          const SectionTitle('About Us'),
          const Tile(icon: Icons.info, title: 'About MoodBeat'),
          const ListTileItem(
              icon: Icons.app_settings_alt, title: 'App Version 1.0.0'),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
