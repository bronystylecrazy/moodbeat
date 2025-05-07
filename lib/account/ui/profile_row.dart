import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 16)),
          const SizedBox(width: 10),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF9188F7),
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
