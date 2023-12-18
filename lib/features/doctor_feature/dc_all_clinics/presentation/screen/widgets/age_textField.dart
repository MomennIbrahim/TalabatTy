import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';

class AgeTextField extends StatelessWidget {
  const AgeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal10,
      child: CustomTextField(
          controller: TextEditingController(),
          lable: 'Age',
          borderRadius: BorderRadius.circular(12.r)),
    );
  }
}
