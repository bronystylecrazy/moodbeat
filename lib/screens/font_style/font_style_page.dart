import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'background_bottom_sheet.dart';
import 'customization_option.dart';
import 'font_bottom_sheet.dart';
import 'font_preview_card.dart';
import 'font_size_slider.dart';

class FontStylePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final fontSizeValue = useState(3.0);
    final selectedFont = useState('Default');
    final selectedBackground = useState('Default');

    final backgroundColors = {
      'Default': const Color(0xFFFFFBF0),
      'Cream': const Color(0xFFFFFFCC),
      'Green': const Color(0xFFDDEEE2),
      'Red': const Color(0xFFFFDDDD),
      'Purple': const Color(0xFFF3EBFA),
      'Pink': const Color(0xFFFBE4EA),
    };

    void showFontOptions() {
      showFontBottomSheet(
        context: context,
        initialFont: selectedFont.value,
        onFontSelected: (val) => selectedFont.value = val,
      );
    }

    void showBackgroundOptions() {
      showBackgroundBottomSheet(
        context: context,
        selectedBackground: selectedBackground.value,
        backgroundColors: backgroundColors,
        onSelect: (val) => selectedBackground.value = val,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleLeft,
              color: Color(0xFF9188F7), size: 32),
          onPressed: () {},
        ),
        title: const Text(
          "Font Style",
          style: TextStyle(
            color: Color(0xFF9188F7),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontPreviewCard(
              fontFamily: selectedFont.value,
              backgroundColor: backgroundColors[selectedBackground.value]!,
            ),
            const SizedBox(height: 20),
            const Text(
              'Font Size',
              style: TextStyle(
                color: Color(0xFF3F3F3F),
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.40,
              ),
            ),
            FontSizeSlider(
              value: fontSizeValue.value,
              onChanged: (val) => fontSizeValue.value = val,
            ),
            const SizedBox(height: 20),
            const Text(
              'Customisation',
              style: TextStyle(
                color: Color(0xFF3F3F3F),
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.40,
              ),
            ),
            const SizedBox(height: 12),
            CustomizationOption(
              icon: Icons.text_fields,
              label: 'Font',
              value: selectedFont.value,
              onTap: showFontOptions,
            ),
            const SizedBox(height: 12),
            CustomizationOption(
              icon: Icons.image,
              label: 'Background',
              value: selectedBackground.value,
              onTap: showBackgroundOptions,
            ),
          ],
        ),
      ),
    );
  }
}
