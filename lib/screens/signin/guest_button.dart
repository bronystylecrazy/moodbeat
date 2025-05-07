import 'package:flutter/material.dart';

class GuestButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GuestButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: Color(0xFF9188F7), width: 1),
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
        "Continue as Guest",
        style: TextStyle(
          color: Color(0xFF9188F7),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
