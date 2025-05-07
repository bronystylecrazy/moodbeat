import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
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
                const SizedBox(height: 20),
                const Text(
                  "Congratulation !",
                  style: TextStyle(
                    color: Color(0xFF9188F7),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat",
                  ),
                ),
                const SizedBox(height: 10),
                const Text.rich(
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
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(51),
                  ),
                  minimumSize: const Size(109, 40),
                ),
                onPressed: () {},
                child: const Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
