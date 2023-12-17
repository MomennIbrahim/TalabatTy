import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Styles.styleCabinSketch24,);
  }
}
