import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class BagWithoutItem extends StatelessWidget {
  const BagWithoutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.h),
      child: SizedBox(
        height: 353.h,
        child: Card(
          color: const Color(0xFFFEFEFE),
          elevation: 2.5,
          shadowColor: Colors.grey[400],
          child: Column(
            children: [
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffBE5F5F),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      topLeft: Radius.circular(12.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0.w.h),
                  child: Text(
                    'My Bag',
                    style: Styles.style18
                        .copyWith(color: Constance.kWhiteColor),
                  ),
                ),
              ),
              Gap(48.h),
              SvgPicture.asset('assets/images/shopping-bag.svg'),
              Gap(32.h),
              Text(
                'There are no items in your Bag',
                style: Styles.style18.copyWith(
                  color: const Color(0xFFDDDDDD),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
