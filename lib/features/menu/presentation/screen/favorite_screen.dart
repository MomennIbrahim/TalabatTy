import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/add_minus_row_widget.dart';
import 'package:foodc_app/features/menu/presentation/screen/widgets/custom_background.dart';
import 'package:gap/gap.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeftBig(
        child: Column(
          children: [
            const CustomBackGround(text: 'my favorite'),
            Gap(32.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Container(
                width: double.maxFinite,
                height: 168.h,
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
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.h,
                      decoration: const BoxDecoration(color: Color(0xFFBE5F5F)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'El Maqam -',
                                  style: Styles.styleWhite18,
                                ),
                                TextSpan(
                                  text: ' Semouha',
                                  style: Styles.style18.copyWith(color: const Color(0xffDDDDDD) ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(20.h),
                    const AddMinusRowWidget(),
                    Gap(20.h),
                    const AddMinusRowWidget(),
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
