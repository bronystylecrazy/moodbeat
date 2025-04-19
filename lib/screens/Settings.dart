import 'package:flutter/material.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 75, // Adjust the width of the button
        height: 75, // Adjust the height of the button
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: 10), // Adjust padding to fine-tune position
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 15,
          child: SizedBox(
            height: 77,
            child: Row(
              children: [
                // Empty Box for the 1st position
                const Spacer(),
                // 2nd Position - Home Icon
                IconButton(
                  icon: Icon(Icons.home_rounded,
                      size: 27, // Adjusting the size of the home icon
                      color:
                          _selectedTab == 'home' ? Colors.black : Colors.grey),
                  onPressed: () {
                    setState(() {
                      _selectedTab = 'home';
                    });
                  },
                ),
                const Spacer(),
                // Empty Box for the 3rd position (floating action button in center)
                const Spacer(),
                // 4th Position - Profile Icon
                IconButton(
                  icon: Icon(Icons.account_circle_rounded,
                      size: 27, // Adjusting the size of the profile icon
                      color: _selectedTab == 'profile'
                          ? Colors.purple
                          : Colors.grey),
                  onPressed: () {
                    setState(() {
                      _selectedTab = 'profile';
                    });
                  },
                ),
                const Spacer(),
                // Empty Box for the 5th position
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: 75),
            children: [
              _buildProfileSection(),
              _buildSectionTitle('Customisation'),
              _buildListTile(Icons.text_fields, 'Font Style', 'Default'),
              _buildListTile(Icons.wallpaper, 'Background', 'Default'),
              _buildSectionTitle('Setting'),
              _buildNextTile(Icons.music_note, 'Music Preference',
                  Icons.arrow_forward_ios),
              _buildNextTile(
                  Icons.person_off, 'Hide Artist', Icons.arrow_forward_ios),
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
        style: TextStyle(
          color: const Color(0xFF3F3F3F),
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
          color: const Color(0xFFFFFBF0E5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            title: Text(
              'Happy',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 20,
                color: Color(0xFF9188F7),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                size: 16, color: Color(0xFF9188F7)),
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
        style: TextStyle(
          color: const Color(0xFF3F3F3F),
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
        style: TextStyle(
          color: const Color(0xFF3F3F3F),
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
      leading: Icon(icon, color: Color(0xFF9188F7)),
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xFF3F3F3F),
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
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFCECDCD),
                      fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 16, color: Color(0xFFCECDCD)),
              ],
            )
          : null,
      onTap: () {},
    );
  }

  Widget _buildLanguageTile() {
    return ListTile(
      leading: Icon(Icons.language, color: Color(0xFF9188F7)),
      title: Text(
        'Language',
        style: TextStyle(
          color: const Color(0xFF3F3F3F),
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
                    ? Color(0xFF9188F7)
                    : Color(0xFFCECDCD),
              ),
            ),
          ),
          Text(' | ', style: TextStyle(fontSize: 16, color: Color(0xFFCECDCD))),
          GestureDetector(
            onTap: () => _changeLanguage('EN'),
            child: Text(
              'EN',
              style: TextStyle(
                fontSize: 16,
                color: _selectedLanguage == 'EN'
                    ? Color(0xFF9188F7)
                    : Color(0xFFCECDCD),
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
      secondary: Icon(Icons.notifications, color: Color(0xFF9188F7)),
      title: Text('Notification'),
      value: true,
      onChanged: (bool value) {},
    );
  }
}
