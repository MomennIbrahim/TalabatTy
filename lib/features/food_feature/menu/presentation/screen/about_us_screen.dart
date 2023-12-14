import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:gap/gap.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FadeInLeftBig(
          child: Column(
            children: [
              const CustomBackGround(text: 'about us'),
              Gap(32.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Container(
                  width: double.maxFinite,
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
                              child: Text(
                                'About Us',
                                style: Styles.styleWhite18,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0.w.h),
                        child: Text(
                          'Foodc is a website and mobile app for ordering food and booking medical consultations, and it provides its services in various locations. Whether you find yourself immersed in the bustling heart of the city, residing in the suburbs, or in the surrounding areas, our services are readily available to meet your needs. Enjoy the unparalleled convenience of having food delivered directly to your door and booking your medical consultations with ease.',
                          style: Styles.styleGrey18.copyWith(color: const Color(0xff0ff707070)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
