import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onPressed;

  const NextButton({
    super.key,
    required this.enabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: enabled ? const Color(0xFF000000) : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(51),
            ),
            minimumSize: const Size(109, 40),
          ),
          onPressed: enabled ? onPressed : null,
          child: const Text(
            "Next",
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
