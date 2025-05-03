import 'package:flutter/material.dart';

class GenreSelectionGrid extends StatelessWidget {
  final List<String> genres;
  final Set<String> selectedGenres;
  final Function(String) onTapGenre;

  const GenreSelectionGrid({
    super.key,
    required this.genres,
    required this.selectedGenres,
    required this.onTapGenre,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: genres.map((genre) {
        final isSelected = selectedGenres.contains(genre);

        return GestureDetector(
          onTap: () => onTapGenre(genre),
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF9188F7) : Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: isSelected ? Colors.white : const Color(0xFF9188F7),
                width: 1,
              ),
            ),
            child: Text(
              genre,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF9188F7),
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
