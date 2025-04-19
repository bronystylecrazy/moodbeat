import 'package:flutter/material.dart';
import 'package:moodbeat/screens/Q1.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String clientId = "YOUR_SPOTIFY_CLIENT_ID";
const String redirectUri = "YOUR_REDIRECT_URI";
const String authorizationEndpoint = "https://accounts.spotify.com/authorize";
const String tokenEndpoint = "https://accounts.spotify.com/api/token";

void main() {
  runApp(const Signin());
}

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Sigmin());
  }
}

class Sigmin extends StatefulWidget {
  @override
  _SigminState createState() => _SigminState();
}

class _SigminState extends State<Sigmin> {
  bool isLoading = false;

  Future<void> _loginWithSpotify(BuildContext context) async {
    setState(() {
      isLoading = true; // Show loading indicator
    });

    // Spotify authorization URL
    final url =
        "$authorizationEndpoint?client_id=$clientId&response_type=code&redirect_uri=$redirectUri&scope=user-read-private%20user-read-email";

    try {
      // Authenticate user with Spotify
      final result = await FlutterWebAuth2.authenticate(
        url: url,
        callbackUrlScheme:
            "YOUR_CALLBACK_SCHEME", // Replace with your actual callback URL scheme
      );

      // Extract the code from the result
      final code = Uri.parse(result).queryParameters['code'];

      if (code != null) {
        // Exchange code for an access token
        final tokenResponse = await http.post(
          Uri.parse(tokenEndpoint),
          headers: {"Content-Type": "application/x-www-form-urlencoded"},
          body: {
            "grant_type": "authorization_code",
            "code": code,
            "redirect_uri": redirectUri,
            "client_id": clientId,
            "client_secret":
                "YOUR_SPOTIFY_CLIENT_SECRET", // Replace with your actual client secret
          },
        );

        final tokenData = json.decode(tokenResponse.body);

        if (tokenData['access_token'] != null) {
          final accessToken = tokenData['access_token'];
          print("Access Token: $accessToken");

          // You can now make API requests to Spotify using the access token
          // For example, get user's profile info:
          _fetchUserProfile(accessToken);
        } else {
          print("Failed to retrieve access token");
        }
      }
    } catch (e) {
      print("Error during authentication: $e");
    } finally {
      setState(() {
        isLoading = false; // Hide loading indicator
      });
    }
  }

  // Function to fetch user's profile from Spotify using the access token
  Future<void> _fetchUserProfile(String accessToken) async {
    final response = await http.get(
      Uri.parse("https://api.spotify.com/v1/me"),
      headers: {"Authorization": "Bearer $accessToken"},
    );

    if (response.statusCode == 200) {
      final profileData = json.decode(response.body);
      print("User Profile: $profileData");

      // You can process the profile data here (e.g., display the user's name or email)
    } else {
      print("Failed to fetch user profile");
    }
  }

  @override
  Widget build(BuildContext context) {
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
              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                    onPressed: () => _loginWithSpotify(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9188F7),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Color(0xFF7A28C8),
                          width: 1,
                        ),
                      ),
                    ),
                    icon: ClipOval(
                      child: Image.asset(
                        "assets/images/Spotify.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                    label: const Text(
                      "Continue with Spotify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              const SizedBox(height: 10),
              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Q1();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Color(0xFF9188F7),
                          width: 1,
                        ),
                      ),
                    ),
                    icon: ClipOval(
                      child: Image.asset(
                        "assets/images/incognito.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                    label: const Text(
                      "Continue  as  Guest ",
                      style: TextStyle(
                        color: Color(0xFF9188F7),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
