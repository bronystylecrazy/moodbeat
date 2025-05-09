import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedTab = 'profile';
  String _selectedLanguage = 'EN';

  @override
  Widget build(BuildContext context) {
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
                        size: 36, color: Colors.black),
                    onPressed: () {
                      // Go to Home
                    },
                  ),
                  const SizedBox(width: 0),
                  IconButton(
                    icon: const Icon(Icons.account_circle_rounded,
                        size: 36, color: Colors.grey),
                    onPressed: () {
                      // Go to Profile
                      context.push("/setting");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 75),
            children: [
              _buildProfileSection(),
              const SizedBox(height: 24),
              _buildSectionTitle('Customisation'),
              _buildListTile(Icons.text_fields, 'Font Style', 'Default'),
              _buildListTile(Icons.wallpaper, 'Background', 'Default'),
              _buildSectionTitle('Setting'),
              _buildNextTile(
                Icons.music_note,
                'Music Preference',
                Icons.arrow_forward_ios,
              ),
              _buildNextTile(
                Icons.person_off,
                'Hide Artist',
                Icons.arrow_forward_ios,
              ),
              _buildLanguageTile(),
              _buildNotificationToggle(),
              _buildSectionTitle('About Us'),
              _buildTile(Icons.info, 'About MoodBeat', Icons.arrow_forward_ios),
              _buildListTile(Icons.app_settings_alt, 'App Version 1.0.0'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNextTile(IconData icon1, String title, IconData icon2) {
    return ListTile(
      leading: Icon(icon1, color: const Color(0xFF9188F7)),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F3F3F),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(icon2, size: 16, color: const Color(0xFFCECDCD)),
    );
  }

  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFBF0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            title: const Text(
              'Happy',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 20,
                color: Color(0xFF9188F7),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFF9188F7),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F3F3F),
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildTile(IconData icon1, String title, IconData icon2) {
    return ListTile(
      leading: Icon(icon1, color: const Color(0xFF9188F7)),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F3F3F),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(icon2, size: 16, color: const Color(0xFFCECDCD)),
    );
  }

  Widget _buildListTile(IconData icon, String title, [String? subtitle]) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF9188F7)),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F3F3F),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: subtitle != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFCECDCD),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xFFCECDCD),
                ),
              ],
            )
          : null,
      onTap: () {},
    );
  }

  Widget _buildLanguageTile() {
    return ListTile(
      leading: const Icon(Icons.language, color: Color(0xFF9188F7)),
      title: const Text(
        'Language',
        style: TextStyle(
          color: Color(0xFF3F3F3F),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => _changeLanguage('TH'),
            child: Text(
              'TH',
              style: TextStyle(
                fontSize: 16,
                color: _selectedLanguage == 'TH'
                    ? const Color(0xFF9188F7)
                    : const Color(0xFFCECDCD),
              ),
            ),
          ),
          const Text(
            ' | ',
            style: TextStyle(fontSize: 16, color: Color(0xFFCECDCD)),
          ),
          GestureDetector(
            onTap: () => _changeLanguage('EN'),
            child: Text(
              'EN',
              style: TextStyle(
                fontSize: 16,
                color: _selectedLanguage == 'EN'
                    ? const Color(0xFF9188F7)
                    : const Color(0xFFCECDCD),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _changeLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  Widget _buildNotificationToggle() {
    return SwitchListTile(
      secondary: const Icon(Icons.notifications, color: Color(0xFF9188F7)),
      title: const Text('Notification'),
      value: true,
      onChanged: (bool value) {},
    );
  }
}
