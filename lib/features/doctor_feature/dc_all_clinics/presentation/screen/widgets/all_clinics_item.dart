import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class AllClinicsItem extends StatelessWidget {
  const AllClinicsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(62.r),
        border: Border.all(color: Constance.kBLueColor),
      ),
      child: Text(
        'Eye Clinic',
        style: Styles.styleBlue16,
      ),
    );
  }
}
