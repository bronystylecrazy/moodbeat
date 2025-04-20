// lib/animation_wrapper.dart
import 'package:flutter/material.dart';

// Function to create a route with a slide-up animation (ease-out)
PageRouteBuilder createSlideUpRoute(Widget page) {
  print("Creating slide up route");
  return PageRouteBuilder(
    opaque: false,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0); // Start from below the screen
      const end = Offset.zero; // End at the normal position
      const curve = Curves.easeOut; // Use easeOut curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}

// Function to create a route with a slide-out to the top animation (ease-out)
PageRouteBuilder createSlideOutTopRoute(Widget page) {
  return PageRouteBuilder(
    opaque: false,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset.zero; // Start at the normal position
      const end = Offset(0.0, -1.0); // End off-screen to the top
      const curve = Curves.easeOut; // Use easeOut curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}

// Function to create a route with a slide-out to the right animation (ease-out)
PageRouteBuilder createSlideOutRightRoute(Widget page) {
  return PageRouteBuilder(
    opaque: false,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset.zero; // Start at the normal position
      const end = Offset(1.0, 0.0); // End off-screen to the right
      const curve = Curves.easeOut; // Use easeOut curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}

// Function to create a route with a slide-in from the left animation (ease-out)
PageRouteBuilder createSlideInLeftRoute(Widget page) {
  return PageRouteBuilder(
    opaque: false,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1.0, 0.0); // Start off-screen to the left
      const end = Offset.zero; // End at the normal position
      const curve = Curves.easeOut; // Use easeOut curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
