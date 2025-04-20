// app_router.dart
import 'package:go_router/go_router.dart';
import 'package:moodbeat/screens/Account.dart';
import 'package:moodbeat/screens/SignUp.dart';

final GoRouter router = GoRouter(
  initialLocation: "/profile",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => AccountPage(),
    ),
  ],
);
