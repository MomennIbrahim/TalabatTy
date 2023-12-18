import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class FeesPrice extends StatelessWidget {
  const FeesPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 46.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFFEFEFE),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text('Fees: 200 L.E', style: Styles.styleBlack24)),
    );
  }
}
