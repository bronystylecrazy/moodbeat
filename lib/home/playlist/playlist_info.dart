// lib/home/playlist/playlist_info.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlaylistInfo extends StatelessWidget {
  final DateTime date;
  final String description;

  const PlaylistInfo({
    Key? key,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateFormat('dd MMMM yyyy').format(date), // Format the date here
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
            color: Color(0xFFCECDCD),
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
