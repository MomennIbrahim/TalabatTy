import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class CustomTracker extends StatelessWidget {
  const CustomTracker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/storefront-sharp.svg',
                      width: 32.w, height: 32.h),
                  Gap(10.w),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0.h),
                    child: SvgPicture.asset(
                      'assets/images/dash.svg',
                      color: Constance.kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Gap(12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Accepted',
                    style: Styles.style16,
                  ),
                  Gap(8.h),
                  Text(
                    'Preparing your order',
                    style: Styles.style12,
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/images/storefront-sharp.svg',
                    width: 32.w,
                    height: 32.h,
                    color: Colors.black,
                  ),
                  Gap(10.w),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0.h),
                    child: SvgPicture.asset('assets/images/dash.svg',
                        color: Colors.grey),
                  ),
                ],
              ),
              Gap(12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Ready ',
                    style: Styles.style16,
                  ),
                  Gap(8.h),
                  Text(
                    'Preparing your order',
                    style: Styles.style12,
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/storefront-sharp.svg',
                      width: 32.w, height: 32.h, color: Colors.black),
                  Gap(10.w),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0.h),
                    child: SvgPicture.asset(
                      'assets/images/dash.svg',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Gap(12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Picked Up',
                    style: Styles.style16,
                  ),
                  Gap(8.h),
                  Text(
                    'Preparing your order',
                    style: Styles.style12,
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/storefront-sharp.svg',
                  width: 32.w, height: 32.h, color: Colors.black),
              Gap(22.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Delivered',
                    style: Styles.style16,
                  ),
                  Gap(8.h),
                  Text(
                    'Preparing your order',
                    style: Styles.style12,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
