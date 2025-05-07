import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarBackAndSkip extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBack;

  const AppBarBackAndSkip({
    super.key,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.angleLeft,
          color: Color(0xFF9188F7),
          size: 32,
        ),
        onPressed: onBack,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Skip",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
