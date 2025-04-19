// lib/loading_animation.dart
import 'package:flutter/material.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  bool _isVariant2 = false; // Track if we're in "Variant2" or "Default"

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    // Stage 1: Delay for 700ms and switch to "Variant2"
    await Future.delayed(const Duration(milliseconds: 700));
    if (mounted) {
      setState(() {
        _isVariant2 = true;
      });
    }

    // Stage 2: Delay for 300ms and switch back to "Default"
    await Future.delayed(const Duration(milliseconds: 300));
    if (mounted) {
      setState(() {
        _isVariant2 = false;
      });
    }
    //we call the animation again to show the effect
    _startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Overlay
        ModalBarrier(
          color: Colors.black.withOpacity(0.6), // Semi-transparent black
          dismissible: false, // Prevent closing by tapping outside
        ),
        // Loading Animation Content
        Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 0), // Instant switch
            child: _isVariant2 ? _buildVariant2() : _buildDefault(),
          ),
        ),
      ],
    );
  }

  Widget _buildDefault() {
    return Column(
      key: const ValueKey<int>(1),
      mainAxisSize: MainAxisSize.min, // Reduce column height
      children: [
        Image.asset(
          'asset/images/letter_1.png', // Path to your letter1 image
          width: 80, // Adjust as needed
          height: 80, // Adjust as needed
        ),
      ],
    );
  }

  Widget _buildVariant2() {
    return Column(
      key: const ValueKey<int>(2),
      mainAxisSize: MainAxisSize.min, // Reduce column height
      children: [
        Image.asset(
          'asset/images/letter_2.png', // Path to your letter2 image
          width: 80, // Adjust as needed
          height: 80, // Adjust as needed
        ),
      ],
    );
  }
}
