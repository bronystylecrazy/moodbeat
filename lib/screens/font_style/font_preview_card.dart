import 'package:flutter/material.dart';

class FontPreviewCard extends StatelessWidget {
  final String fontFamily;
  final Color backgroundColor;

  const FontPreviewCard({
    super.key,
    required this.fontFamily,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        height: 202,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFECE7DB)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 16,
              top: 16,
              child: Text(
                '23 June 2024',
                style: TextStyle(
                  color: Color(0xFF3F3F3F),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.40,
                ),
              ),
            ),
            Positioned(
              left: 165,
              top: 51,
              child: Column(
                children: [
                  Image.asset("assets/images/joy.png", width: 52, height: 53),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 52,
                    child: Text(
                      'Joy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF3F3F3F),
                        fontSize: 18,
                        fontFamily:
                            fontFamily == 'Default' ? 'Montserrat' : fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 36,
              top: 141,
              child: SizedBox(
                width: 310,
                child: Text(
                  'Pick a font that shows off your unique taste!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
