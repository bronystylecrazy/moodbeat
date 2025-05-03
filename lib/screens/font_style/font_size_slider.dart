import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FontSizeSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double>? onChanged;

  const FontSizeSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfSlider(
          min: 0,
          max: 4,
          value: value,
          interval: 1,
          showTicks: true,
          showLabels: false,
          enableTooltip: true,
          stepSize: 1,
          onChanged: onChanged as ValueChanged<dynamic>?,
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('A', style: TextStyle(fontSize: 12)),
            Text('Larger', style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
