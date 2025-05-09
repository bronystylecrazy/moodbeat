import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/core/hooks/auth_hook.dart';

class BottomNavBar extends HookWidget {
  final String selectedTab;
  final void Function(String) onTabChange;

  const BottomNavBar(
      {required this.selectedTab, required this.onTabChange, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 10)
        ],
      ),
      child: BottomAppBar(
        color: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        height: 75,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              icon: Icon(Icons.home_rounded,
                  size: 35,
                  color: selectedTab == 'home' ? Colors.black : Colors.grey),
              onPressed: () => context.push("/calendar"),
            ),
            const Spacer(flex: 5),
            IconButton(
              icon: Icon(Icons.account_circle_rounded,
                  size: 35,
                  color: selectedTab == 'profile' ? Colors.black : Colors.grey),
              onPressed: () => onTabChange('profile'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends HookWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final query = useCurrentUserQuery();
    final displayName = query.data?.data?.displayName ?? 'Happy';
    final avatar = query.data?.data?.avatarUrl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFBF0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: avatar != null
                ? NetworkImage(avatar) as ImageProvider<Object>?
                : const AssetImage('assets/images/profile.png'),
          ),
          title: Text(
            displayName,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat',
              fontSize: 20,
              color: Color(0xFF9188F7),
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,
              size: 16, color: Color(0xFF9188F7)),
          onTap: () {
            context.push('/profile');
          },
        ),
      ),
    );
  }
}

class SectionTitle extends HookWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
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
}

class ListTileItem extends HookWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final void Function()? onTap;
  const ListTileItem(
      {required this.icon,
      required this.title,
      this.subtitle,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
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
                Text(subtitle!,
                    style: const TextStyle(
                        fontSize: 16, color: Color(0xFFCECDCD))),
                const Icon(Icons.arrow_forward_ios,
                    size: 16, color: Color(0xFFCECDCD)),
              ],
            )
          : null,
      onTap: onTap,
    );
  }
}

class NextTile extends HookWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const NextTile(
      {required this.icon, required this.title, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF9188F7)),
      title: Text(title,
          style: const TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
      trailing: const Icon(Icons.arrow_forward_ios,
          size: 16, color: Color(0xFFCECDCD)),
      onTap: onTap,
    );
  }
}

class Tile extends HookWidget {
  final IconData icon;
  final String title;
  const Tile({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF9188F7)),
      title: Text(title,
          style: const TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
      trailing: const Icon(Icons.arrow_forward_ios,
          size: 16, color: Color(0xFFCECDCD)),
    );
  }
}

class LanguageTile extends HookWidget {
  final String selected;
  final void Function(String) onChange;
  const LanguageTile(
      {required this.selected, required this.onChange, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.language, color: Color(0xFF9188F7)),
      title: const Text('Language',
          style: TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: Text(
              'TH',
              style: TextStyle(
                fontSize: 16,
                color: selected == 'TH'
                    ? const Color(0xFF9188F7)
                    : const Color(0xFFCECDCD),
              ),
            ),
          ),
          const Text(' | ',
              style: TextStyle(fontSize: 16, color: Color(0xFFCECDCD))),
          GestureDetector(
            child: Text(
              'EN',
              style: TextStyle(
                fontSize: 16,
                color: selected == 'EN'
                    ? const Color(0xFF9188F7)
                    : const Color(0xFFCECDCD),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        // Toggle between 'EN' and 'TH'
        final newLanguage = selected == 'EN' ? 'TH' : 'EN';
        onChange(newLanguage);
      },
    );
  }
}

class NotificationToggle extends HookWidget {
  const NotificationToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final isOn = useState(false);
    return SwitchListTile(
      secondary: const Icon(Icons.notifications, color: Color(0xFF9188F7)),
      title: const Text('Notification'),
      value: isOn.value,
      onChanged: (value) => isOn.value = value,
    );
  }
}
