import 'package:flutter/material.dart';
import 'package:flutter_query/flutter_query.dart';
import 'package:moodbeat/home/calendar/calendar.dart';
import 'package:moodbeat/router.dart';
import 'package:moodbeat/screens/_SignUp.dart';
import 'package:moodbeat/service_locator.dart';

class AppColors {
  static const Color defualtColor = Color(0xFF9188F7);
  static const Color secondary = Color(0xFF9E93F7);
  static const Color background = Color(0xFFD1CAFA);
  static const Color ascent = Color(0xFFDCF881);

  static const Color cream = Color(0xFFFDF9F1);
  static const Color success = Color(0xFF79CB28);
  static const Color errorColor = Color(0xFFCB2828);

  static const Color button = Color(0xFF1B1B1B);
  static const Color blackSecondary = Color(0xFF242424);

  static const Color textColor = Color(0xFF111111);
  static const Color disableText = Color(0xFFCECECE);
  static const Color disable = Color(0xFFF8F8F8);
  static const Color whiteColor = Color(0xFFFFFFFF);
}

class AppTextStyles {
  static const String primaryFontFamily = 'Montserrat';

  static const TextStyle heading1 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const TextStyle heading3 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static const TextStyle body3 = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );
}

class AppButtonStyle {
  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.defualtColor,
    foregroundColor: Colors.white,
    textStyle: const TextStyle(
      fontFamily: AppTextStyles.primaryFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
    elevation: 0,
  );

  static ButtonStyle secondaryButton = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: AppColors.defualtColor,
    side: const BorderSide(
      color: AppColors.defualtColor,
      style: BorderStyle.solid,
      width: 2,
    ),
    textStyle: const TextStyle(
      fontFamily: AppTextStyles.primaryFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
    elevation: 0,
  );

  static ButtonStyle disableButton = TextButton.styleFrom(
    backgroundColor: AppColors.disable,
    foregroundColor: AppColors.disableText,
    textStyle: const TextStyle(
      fontFamily: AppTextStyles.primaryFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
    elevation: 0,
    shadowColor: Colors.transparent,
  );
}

class moodSelection {
  static const Map<String, String> moodImages = {
    'Joy': 'assets/images/joy.png',
    'Surprise': 'assets/images/surprise.png',
    'Expecting': 'assets/images/expecting.png',
    'Trust': 'assets/images/trust.png',
    'Disgust': 'assets/images/disgust.png',
    'Anger': 'assets/images/angry.png',
    'Fear': 'assets/images/fear.png',
    'Sad': 'assets/images/sad.png',
  };
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    QueryScope(
      child: MaterialApp.router(
        title: "MoodBeat",
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Montserrat', // Apply Montserrat font globally
          scaffoldBackgroundColor:
              Colors.white, // Set background color globally
        ),
      ),
    ),
  );
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           padding: EdgeInsets.fromLTRB(16, 67, 16, 0),
//           child: MyCalendarScreen(),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
