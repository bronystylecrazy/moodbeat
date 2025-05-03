import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/screens/settings/utils.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = useState('profile');
    final selectedLanguage = useState('EN');

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const SizedBox(
        height: 75,
        width: 75,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          onPressed: null,
          child: Icon(Icons.add, size: 60, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedTab: selectedTab.value,
        onTabChange: (tab) => selectedTab.value = tab,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 75),
        children: [
          const ProfileSection(),
          const SizedBox(height: 24),
          const SectionTitle('Customisation'),
          ListTileItem(
            icon: Icons.text_fields,
            title: 'Font Style',
            subtitle: 'Default',
            onTap: () => print('Font Style'),
          ),
          const ListTileItem(
              icon: Icons.wallpaper, title: 'Background', subtitle: 'Default'),
          const SectionTitle('Setting'),
          NextTile(
            icon: Icons.music_note,
            title: 'Music Preference',
            onTap: () => print('Font Style'),
          ),
          const NextTile(icon: Icons.person_off, title: 'Hide Artist'),
          LanguageTile(
            selected: selectedLanguage.value,
            onChange: (lang) => selectedLanguage.value = lang,
          ),
          const NotificationToggle(),
          const SectionTitle('About Us'),
          const Tile(icon: Icons.info, title: 'About MoodBeat'),
          const ListTileItem(
              icon: Icons.app_settings_alt, title: 'App Version 1.0.0'),
        ],
      ),
    );
  }
}
