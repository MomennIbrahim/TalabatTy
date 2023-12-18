import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({
    super.key,
    required this.icon,
    required this.gender,
  });

  final String icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Constance.kGreyColor),
      ),
      width: 146.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            Gap(2.w),
            Text(
              gender,
              style: Styles.styleGrey16,
            ),
          ],
        ),
      ),
    );
  }
}
