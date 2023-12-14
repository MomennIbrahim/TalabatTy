import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class RestaurantReviewItem extends StatelessWidget {
  const RestaurantReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242.w,
      height: 120.h,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            spreadRadius: .5,
            blurRadius: 5,
            offset: Offset(0, 2),
            color: Colors.black12
          )
        ],
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0.w.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundImage: const AssetImage('assets/images/Females doctor at hospital with stethoscope.png'),
            ),
            Gap(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nada Saleh',style: Styles.style16W500,),
                Text('Customer',style: Styles.styleGrey14,),
                Gap(5.5.h),
                Text('Amazing',style: Styles.styleGrey14,),
                Text('08 November 2023',style: Styles.styleGrey14,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
