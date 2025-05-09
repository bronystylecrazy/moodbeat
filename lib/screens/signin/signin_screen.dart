import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat/screens/signin/guest_button.dart';
import 'package:moodbeat/screens/signin/spotify_button.dart';
import 'package:moodbeat_core/moodbeat_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart'; // Assuming you're using GoRouter

class SigninScreen extends HookWidget {
  SigninScreen({super.key});
  final profileApi = getIt.get<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    Future<void> loginWithSpotify() async {
      final prefs = await SharedPreferences.getInstance();
      isLoading.value = true;

      try {
        final result = await FlutterWebAuth2.authenticate(
          url: "https://moodbeat-api.devsirawit.com/authorize",
          callbackUrlScheme: "moodbeat",
        );

        final token = Uri.parse(result).queryParameters['token'];
        if (token == null) throw Exception("Token not found in redirect URL");

        await prefs.setString("token", token);
        print(token);
        getIt<Dio>().options.headers["Authorization"] = token;

        final profileResult = await profileApi.getUserProfile();
        final userProfile = profileResult.data;

        if (userProfile?.setupAt == null) {
          context.go('/onboarding');
        } else {
          context.go('/calendar'); // Or wherever the logged-in user should go
        }
      } catch (e) {
        debugPrint("Authentication error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed. Please try again.')),
        );
      } finally {
        isLoading.value = false;
      }
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Head.png",
                width: 250,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(height: 70),
              if (isLoading.value)
                const CircularProgressIndicator()
              else ...[
                SpotifyButton(onPressed: loginWithSpotify),
                const SizedBox(height: 10),
                GuestButton(
                  onPressed: () {
                    context.go('/onboarding/q1');
                  },
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
