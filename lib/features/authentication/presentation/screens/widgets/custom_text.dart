import 'package:flutter/material.dart';
import '../../../../../core/utlis/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.style});


  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style,
    );
  }
}
