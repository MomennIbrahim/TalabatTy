import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utlis/styles.dart';

class ForgetPasswordSubTitle extends StatelessWidget {
  const ForgetPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.0.w),
      child: Text(
        'Don\'t worry, we\'ll send you reset instructions',
        style: Styles.style18.copyWith(color: const Color(0xff575757)),
      ),
    );
  }
}
