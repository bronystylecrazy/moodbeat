import 'package:flutter/material.dart';

class SpotifyButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SpotifyButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF9188F7),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: Color(0xFF7A28C8), width: 1),
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
    );
  }
}
