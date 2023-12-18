import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';

class EnterCodeRowWidget extends StatelessWidget {
  const EnterCodeRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            height: 50.h,
            width: 150.w,
            child: CustomTextField(
                borderRadius: BorderRadius.circular(12.r),
                controller: TextEditingController(),
                lable: '')),
        SizedBox(
          height: 50.h,
          width: 150.w,
          child: CustomButton(
            text: 'Enter Code',
            onPressed: () {},
            textStyle: Styles.styleWhite16,
            buttonColor: Constance.kBLueColor,
          ),
        )
      ],
    );
  }
}
