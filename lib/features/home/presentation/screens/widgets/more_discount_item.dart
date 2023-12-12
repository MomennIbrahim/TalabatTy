import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constance.dart';
import '../../../../../core/utlis/styles.dart';

class MoreDiscountItem extends StatelessWidget {
  const MoreDiscountItem({super.key, this.mealImageWidth});

  final double? mealImageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256.w,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Stack(
        children: [
          SvgPicture.asset('assets/images/Group1171276174.svg'),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '50% OFF',
                      style: Styles.styleCabinSketch18
                          .copyWith(color: Constance.kWhiteColor),
                    ),
                    Gap(10.h),
                    SizedBox(
                        width: 150.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                          child: Text(
                            'Sausage Hawawshi El maqam',
                            style: Styles.styleWhite16,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image(
                  image: const AssetImage(
                      'assets/images/Screenshot.png'),
                  fit: BoxFit.cover,
                  width: mealImageWidth ?? 100.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
