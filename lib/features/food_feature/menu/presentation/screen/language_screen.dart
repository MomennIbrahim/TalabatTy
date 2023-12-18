import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:gap/gap.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key, this.isFood = true});

  final bool isFood;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeftBig(
        child: Column(
          children: [
            const CustomBackGround(text: 'language'),
            Gap(32.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Container(
                width: double.infinity,
                height: 140.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFEFEFE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      color:  Colors.grey[300],
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                        child: Text(
                          'English',
                          style: isFood? Styles.stylePrimaryColor20 : Styles.styleBlue20,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                        child: Text(
                          'عربي',
                          style: Styles.style20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
