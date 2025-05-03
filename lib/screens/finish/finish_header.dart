import 'package:flutter/material.dart';

class FinishHeader extends StatelessWidget {
  const FinishHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text.rich(
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
          SizedBox(height: 20),
          Text(
            "Congratulation !",
            style: TextStyle(
              color: Color(0xFF9188F7),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "You’ve done your ",
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                  ),
                ),
                TextSpan(
                  text: "Mood&Music",
                  style: TextStyle(
                    color: Color(0xFF9188F7),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
