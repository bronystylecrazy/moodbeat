import 'package:flutter/material.dart';

void showFontBottomSheet({
  required BuildContext context,
  required String initialFont,
  required ValueChanged<String> onFontSelected,
}) {
  String tempFont = initialFont;

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: 415,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Font Family',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9188F7),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, color: Color(0xFF9188F7)),
                  )
                ],
              ),
              const SizedBox(height: 10),
              // Font Options
              Expanded(
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return ListView(
                      children: _fonts
                          .map((font) => RadioListTile<String>(
                                value: font,
                                groupValue: tempFont,
                                onChanged: (val) {
                                  if (val != null) {
                                    setState(() => tempFont = val);
                                  }
                                },
                                title: Text(
                                  font,
                                  style: TextStyle(
                                    fontFamily:
                                        font == 'Default' ? 'Montserrat' : font,
                                    fontWeight: font == 'Mitr'
                                        ? FontWeight.w700
                                        : FontWeight.normal,
                                  ),
                                ),
                                activeColor: const Color(0xFF9188F7),
                                contentPadding: EdgeInsets.zero,
                              ))
                          .toList(),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    onFontSelected(tempFont);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Color(0xFF9188F7)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

const List<String> _fonts = [
  'Default',
  'Inter',
  'Roboto',
  'Mali',
  'Source Serif Pro',
  'Mitr',
];
