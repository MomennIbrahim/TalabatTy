import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    this.buttonColor = Constance.kPrimaryColor,
    this.borderSide = BorderSide.none,
  });

  final String text;
  final Function onPressed;
  final TextStyle textStyle;
  final Color buttonColor;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50.h,
      child: MaterialButton(
        color: buttonColor,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0.r),
          side: borderSide,
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
