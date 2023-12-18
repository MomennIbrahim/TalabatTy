import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class TextOverTextField extends StatelessWidget {
  const TextOverTextField({super.key, required this.text, this.padding});

  final String text;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding?? 0),
      child: Text(
        text,
        style: Styles.styleGrey16,
      ),
    );
  }
}
