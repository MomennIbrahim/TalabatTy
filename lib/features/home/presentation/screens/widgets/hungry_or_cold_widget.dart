import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constance.dart';
import '../../../../../core/utlis/styles.dart';

class HungryOrColdWidget extends StatelessWidget {
  const HungryOrColdWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12.r)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0.w),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.0.w),
                      child: Text(
                        title,
                        style: Styles.style14.copyWith(
                            color: Constance.kPrimaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Gap(17.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.0.w),
                      child: Text(
                        subTitle,
                        style: Styles.styleWhite12,
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                height: 120.h,
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}
