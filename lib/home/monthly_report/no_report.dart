import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NoReportBanner extends HookWidget {
  const NoReportBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFEF9F1), // Soft cream background
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 20,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFB29EFF), // Soft purple bar
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Text(
                    'Monthly Report',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
