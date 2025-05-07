import 'package:flutter/material.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
          onPressed: () {
            // TODO: Navigation or action
          },
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
    );
  }
}
