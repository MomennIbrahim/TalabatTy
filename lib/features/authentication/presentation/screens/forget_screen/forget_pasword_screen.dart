import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/back_icon.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/back_text_button.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/forget_password_subtitle.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/forget_password_title.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/reset_password_button.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:gap/gap.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(
          slide: Constance.left,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  const BackIcon(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  const ForgetPasswordTitle(),
                  Gap(18.h),
                  const ForgetPasswordSubTitle(),
                  Gap(48.h),
                  EmailTextField(emailController: TextEditingController()),
                  Gap(40.h),
                  const ResetPasswordButton(),
                  Gap(50.h),
                  const BackTextButton(),
                ],
              ),
            ),
          )),
    );
  }
}
