import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utlis/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.lable,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.fiiledColor,
  });

  final TextEditingController controller;
  final String lable;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextStyle? textStyle;
  final bool? fiiledColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: fiiledColor ?? false,
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0.w),
          child: Text(lable),
        ),
        labelStyle: textStyle ?? Styles.styleGrey16,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        focusedBorder: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        errorBorder: outLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.r),
      borderSide: const BorderSide(color: Colors.grey),
    );
  }
}
