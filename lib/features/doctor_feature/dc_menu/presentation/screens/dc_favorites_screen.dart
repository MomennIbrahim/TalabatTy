import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:gap/gap.dart';

class DcFavoriteScreen extends StatelessWidget {
  const DcFavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomBackGround(
            text: 'my favorite',
          ),
          Gap(32.h),
          Padding(
            padding: Constance.paddingHorizontal26,
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFEFEFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 50.h,
                    decoration: const BoxDecoration(color: Color(0xFF2E7ABB)),
                    child: Padding(
                      padding: Constance.paddingHorizontal14,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'my favorite'.toUpperCase(),
                          style:
                              Styles.styleWhite18.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Gap(23.h),
                  Padding(
                    padding: Constance.paddingHorizontal14,
                    child: Text(
                      'Eye Clinic',
                      style: Styles.style20,
                    ),
                  ),
                  Gap(14.h),
                  Padding(
                    padding: EdgeInsets.only(left: 14.w,right: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Dr. Ramy Shokry',style: Styles.style16,)),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: const Color(0xffffff3a44),
                          child: SvgPicture.asset('assets/images/plus-02.svg'),
                        )
                      ],
                    ),
                  ),
                  Gap(12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 14.w,right: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Dr. Hassan Ramadan',style: Styles.style16,)),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: const Color(0xffffff3a44),
                          child: SvgPicture.asset('assets/images/plus-02.svg'),
                        )
                      ],
                    ),
                  ),
                  Gap(29.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
