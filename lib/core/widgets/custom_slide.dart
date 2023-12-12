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
      return FadeInUpBig(duration: const Duration(milliseconds: 600),child: child,);
    } else if (slide == 'down') {
      return SlideInDown(child: child);
    } else if (slide == 'right') {
      return SlideInRight(child: child);
    } else if(slide == 'left') {
      return SlideInLeft(child: child);
    }else{
      return FadeInUp(child: child,);
    }
  }
}
