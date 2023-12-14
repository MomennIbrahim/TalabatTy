import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/logo_widget.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/custom_or_text.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/custom_text.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/forget_password.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/icons_login.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/password_text_field.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/sign_up_text.dart';
import 'package:gap/gap.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInLeft(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView(
              children: [
                Gap(MediaQuery.of(context).size.height / 15),
                const LogoWidget(),
                Gap(10.h),
                CustomText(
                  text: 'Enjoy a new experience',
                  style: Styles.style20,
                ),
                Gap(32.h),
                CustomText(
                  text: 'login'.toUpperCase(),
                  style: Styles.styleBlack32,
                ),
                Gap(35.h),
                EmailTextField(
                  emailController: TextEditingController(),
                ),
                Gap(16.h),
                PasswordTextField(passwordController: TextEditingController()),
                Gap(10.h),
                const ForgetPassword(),
                Gap(30.h),
                const LoginButton(),
                Gap(25.h),
                const CustomOrText(),
                Gap(25.h),
                const IconsLogin(),
                Gap(25.h),
                const SignUpText(),
                Gap(30.h),
              ],
            )),
      ),
    );
  }
}
