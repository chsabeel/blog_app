import 'package:flutter/material.dart';

class MyCustomPageRoute extends PageRouteBuilder {
  final Widget page;

  MyCustomPageRoute({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionDuration: Durations.long1,
        reverseTransitionDuration: Durations.long1,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
            scale: Tween<double>(begin: 0, end: 1).animate(animation),
            child: child,
          );
        },
      );
}
