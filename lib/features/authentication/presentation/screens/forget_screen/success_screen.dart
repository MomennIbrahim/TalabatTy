import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(
        slide: Constance.left,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Image(
              image: const AssetImage('assets/images/successfully 1.png'),
              width: 200.w,
              height: 190.h,
            ),
          ),
          Center(
              child: Text(
            'Your Password has been successfully',
            style: Styles.style20,
          )),
          Gap(62.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: CustomButton(
              text: 'Back to Login',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kLoginScreen);
              },
              textStyle: Styles.stylePrimaryColor24,
              buttonColor: Colors.white,
              borderSide:
                  const BorderSide(color: Constance.kPrimaryColor, width: 2.5),
            ),
          )
        ],
      )),
    );
  }
}
