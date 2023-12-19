import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class MyReservationInfo extends StatelessWidget {
  const MyReservationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Constance.paddingHorizontal24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Specialty Dr.',
                style: Styles.styleGrey18,
              ),
              Gap(20.w),
              Expanded(
                child: Text(
                  'General ophthalmologist',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.styleGrey18,
                ),
              ),
            ],
          ),
        ),
        Gap(16.h),
        Padding(
          padding: Constance.paddingHorizontal24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reservation ',
                style: Styles.styleGrey18,
              ),
              Gap(20.w),
              Expanded(
                child: Text(
                  'Sun: 17/11/2023',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.styleGrey18,
                ),
              ),
              Gap(10.w),
              Expanded(
                child: Text(
                  '11:10 Am',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.styleGrey18,
                ),
              ),
            ],
          ),
        ),
        Gap(16.h),
        Padding(
          padding: Constance.paddingHorizontal24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fees',
                style: Styles.style18Weight700,
              ),
              Gap(80.w),
              Expanded(
                child: Text(
                  '200 L.E',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.style18Weight700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
