// app_router.dart
import 'package:go_router/go_router.dart';
import 'package:moodbeat/account/page.dart';
import 'package:moodbeat/home/calendar/calendar.dart';
import 'package:moodbeat/home/review/review_screen.dart';
import 'package:moodbeat/screens/MusicPre.dart';
import 'package:moodbeat/screens/_Q3.dart';
import 'package:moodbeat/screens/garph.dart';
import 'package:moodbeat/screens/onboarding/artists_screen.dart';
import 'package:moodbeat/screens/onboarding/music_experience_screen.dart';
import 'package:moodbeat/screens/onboarding/stress_preference_screen.dart';
import 'package:moodbeat/screens/signin/signin_screen.dart';
import 'package:moodbeat/screens/settings/settings_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SigninScreen(),
    ),
    GoRoute(
        path: "/onboarding/q1",
        builder: (context, state) => MusicExperienceScreen()),
    GoRoute(
        path: "/onboarding/q2",
        builder: (context, state) => MoodPreferenceScreen()),
    GoRoute(
        path: "/onboarding/q3",
        builder: (context, state) => StressedPreferenceScreen()),
    GoRoute(
        path: "/onboarding/artists",
        builder: (context, state) => ArtistsScreen()),
    GoRoute(path: "/calendar", builder: (context, state) => MyCalendarScreen()),
    GoRoute(
        path: "/preference",
        builder: (context, state) => MusicPreferencePage()),
    GoRoute(path: "/setting", builder: (context, state) => SettingsScreen()),
    GoRoute(
      path: "/review",
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>? ?? {};

        return ReviewScreen(
          initialRating: extra['initialRating'] ?? 0,
          imageUrl: extra['imageUrl'] ?? '',
          playlistDate: extra['playlistDate'] ?? DateTime.now(),
          onClose: extra['onClose'] ??
              () {
                context.pop();
              },
        );
      },
    ),
    GoRoute(
      path: "/monthly_report",
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;

        final emotionPercentages =
            extra?['emotionPercentages'] as Map<String, double>? ?? {};
        final startDate = extra?['startDate'] as String? ?? '';
        final endDate = extra?['endDate'] as String? ?? '';

        return MonthlyReportPage(
          emotionPercentages: emotionPercentages,
          startDate: startDate,
          endDate: endDate,
        );
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => AccountPage(),
    ),
  ],
);
