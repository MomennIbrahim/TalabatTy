import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomSlideAnimate extends StatelessWidget {
  const CustomSlideAnimate({
    super.key,
    required this.child,
    required this.slide,
  });

  final Widget child;
  final String slide;

  @override
  Widget build(BuildContext context) {
    if (slide == 'up') {
      return SlideInUp(child: child);
    } else if (slide == 'down') {
      return SlideInUp(child: child);
    } else if (slide == 'right') {
      return SlideInRight(child: child);
    } else {
      return SlideInLeft(child: child);
    }
  }
}
