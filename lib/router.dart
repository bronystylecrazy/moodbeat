// app_router.dart
import 'package:go_router/go_router.dart';
import 'package:moodbeat/account/page.dart';
import 'package:moodbeat/screens/MusicPre.dart';
// import 'package:moodbeat/screens/Settings.dart';
import 'package:moodbeat/screens/_Signin.dart';
import 'package:moodbeat/screens/settings/settings_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(
        path: "/preference",
        builder: (context, state) => MusicPreferencePage()),
    GoRoute(path: "/setting", builder: (context, state) => SettingsScreen()),
    GoRoute(
      path: '/profile',
      builder: (context, state) => AccountPage(),
    ),
  ],
);
