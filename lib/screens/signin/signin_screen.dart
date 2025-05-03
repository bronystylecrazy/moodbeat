import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/screens/_Q1.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:moodbeat/screens/signin/guest_button.dart';
import 'package:moodbeat/screens/signin/spotify_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String clientId = "YOUR_SPOTIFY_CLIENT_ID";
const String redirectUri = "YOUR_REDIRECT_URI";
const String authorizationEndpoint = "https://accounts.spotify.com/authorize";
const String tokenEndpoint = "https://accounts.spotify.com/api/token";

class SigninScreen extends HookWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    Future<void> loginWithSpotify() async {
      final prefs = await SharedPreferences.getInstance();

      if (prefs.getString('token') != null) {
        print("Token already exists: ${prefs.getString('token')}");
        return;
      }

      isLoading.value = true;

      try {
        final result = await FlutterWebAuth2.authenticate(
          url:
              "$authorizationEndpoint?client_id=$clientId&response_type=code&redirect_uri=$redirectUri&scope=user-read-private%20user-read-email",
          callbackUrlScheme: "moodbeat",
        );

        final token = Uri.parse(result).queryParameters['token'];

        if (token != null) {
          prefs.setString('token', token);
          print("Spotify token: $token");
        } else {
          print("Token missing in callback");
        }
      } catch (e) {
        print("Error during authentication: $e");
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
              isLoading.value
                  ? const CircularProgressIndicator()
                  : SpotifyButton(onPressed: loginWithSpotify),
              const SizedBox(height: 10),
              isLoading.value
                  ? const CircularProgressIndicator()
                  : GuestButton(onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Q1()));
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
