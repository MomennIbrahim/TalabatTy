import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';

class SelectTimeField extends StatelessWidget {
  const SelectTimeField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      borderRadius: BorderRadius.circular(12.r),
      controller: TextEditingController(),
      lable: 'select time',
      suffixIcon: const Icon(Icons.timelapse),
    );
  }
}
