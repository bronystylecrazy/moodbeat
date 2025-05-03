import 'package:flutter/material.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 245,
          height: 92,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 36,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'MoodBeats',
                  style: TextStyle(
                    color: Color(0xFF9188F7),
                    fontSize: 36,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 265,
          child: Text(
            "This will help us create the best experience for you!",
            style: TextStyle(
              color: Color(0xFF3F3F3F),
              fontSize: 13,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
