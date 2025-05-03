import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(MaterialApp(
    home: FontStylePage(),
  ));
}

class FontStylePage extends StatefulWidget {
  @override
  _FontStylePageState createState() => _FontStylePageState();
}

class _FontStylePageState extends State<FontStylePage> {
  double _value = 3;
  String _selectedFont = 'Default';
  String _selectedBackground = 'Default';

  final Map<String, Color> backgroundColors = {
    'Default': Color(0xFFFFFBF0),
    'Cream': Color(0xFFFFFFCC),
    'Green': Color(0xFFDDEEE2),
    'Red': Color(0xFFFFDDDD),
    'Purple': Color(0xFFF3EBFA),
    'Pink': Color(0xFFFBE4EA),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7),
            size: 32,
          ),
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
            Center(
              child: Container(
                width: 370,
                height: 202,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: backgroundColors[_selectedBackground]!,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFFECE7DB),
                    ),
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
                          Image.asset(
                            "assets/images/joy.png",
                            width: 52,
                            height: 53,
                            filterQuality: FilterQuality.high,
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: 52,
                            child: Text(
                              'Joy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF3F3F3F),
                                fontSize: 18,
                                fontFamily: _selectedFont == 'Default'
                                    ? 'Montserrat'
                                    : _selectedFont,
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
            SizedBox(
              width: double.infinity,
              child: SfSlider(
                min: 0,
                max: 4,
                value: _value,
                interval: 1,
                showTicks: true,
                showLabels: false,
                enableTooltip: true,
                stepSize: 1,
                minorTicksPerInterval: 0,
                onChanged: (dynamic value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('A', style: TextStyle(fontSize: 12)),
                Text('Larger', style: TextStyle(fontSize: 12)),
              ],
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
            _buildCustomizationOption(
              icon: Icons.text_fields,
              label: 'Font',
              value: _selectedFont,
              onTap: _showFontOptions,
            ),
            const SizedBox(height: 12),
            _buildCustomizationOption(
              icon: Icons.image,
              label: 'Background',
              value: _selectedBackground,
              onTap: _showBackgroundOptions,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomizationOption({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: Color(0xFF9188F7)),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF3F3F3F),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF3F3F3F),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  void _showFontOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        String tempFont = _selectedFont;

        return Container(
          width: double.infinity,
          height: 415,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
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
                Expanded(
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return ListView(
                        children: [
                          _buildFontRadio('Default', tempFont,
                              (val) => setState(() => tempFont = val)),
                          _buildFontRadio('Inter', tempFont,
                              (val) => setState(() => tempFont = val)),
                          _buildFontRadio('Roboto', tempFont,
                              (val) => setState(() => tempFont = val)),
                          _buildFontRadio('Mali', tempFont,
                              (val) => setState(() => tempFont = val)),
                          _buildFontRadio('Source Serif Pro', tempFont,
                              (val) => setState(() => tempFont = val)),
                          _buildFontRadio('Mitr', tempFont,
                              (val) => setState(() => tempFont = val)),
                        ],
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() => _selectedFont = tempFont);
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

  Widget _buildFontRadio(
      String label, String groupValue, ValueChanged<String> onChanged) {
    return RadioListTile<String>(
      value: label,
      groupValue: groupValue,
      onChanged: (String? val) {
        if (val != null) onChanged(val);
      },
      title: Text(
        label,
        style: TextStyle(
          fontFamily: label == 'Default' ? 'Montserrat' : label,
          fontWeight: label == 'Mitr' ? FontWeight.w700 : FontWeight.normal,
        ),
      ),
      activeColor: const Color(0xFF9188F7),
      contentPadding: EdgeInsets.zero,
    );
  }

  void _showBackgroundOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        String tempBackground = _selectedBackground;

        final List<Map<String, dynamic>> backgrounds = backgroundColors.entries
            .map((entry) => {'name': entry.key, 'color': entry.value})
            .toList();

        return Container(
          width: double.infinity,
          height: 452,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
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
                      'Background',
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
                const SizedBox(height: 20),
                // Grid of background options
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 20,
                    children: backgrounds.map((bg) {
                      final isSelected = tempBackground == bg['name'];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedBackground = bg['name'];
                          });
                          Navigator.pop(context);
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: bg['color'],
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: isSelected
                                      ? Color(0xFF9188F7)
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: isSelected
                                    ? const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.radio_button_checked,
                                          size: 18,
                                          color: Color(0xFF9188F7),
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              bg['name'],
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
