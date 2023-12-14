import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/back_icon.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/widgets/back_text_button.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/widgets/confirm_button.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/widgets/confirm_new_password_field.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/widgets/new_password_field.dart';
import 'package:gap/gap.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(slide: Constance.left,child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              const BackIcon(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              Text('New Password', style: Styles.styleBlack32),
              Gap(18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                child: Text(
                  'The new password must be different from the passwords used previously',
                  style: Styles.style18.copyWith(color: const Color(0xff575757)),
                ),
              ),
              Gap(48.h),
              NewPasswordField(controller: TextEditingController()),
              Gap(16.h),
              ConfirmNewPasswordField(controller: TextEditingController()),
              Gap(40.h),
              const ConfirmButton(),
              Gap(50.h),
              const BackTextButton(),
            ],
          ),
        ),
      )),
    );
  }
}
