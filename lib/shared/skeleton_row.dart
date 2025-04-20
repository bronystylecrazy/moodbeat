import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonRow extends StatelessWidget {
  final String label;

  const SkeletonRow({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(label,
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 16)),
          const SizedBox(width: 10),
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
