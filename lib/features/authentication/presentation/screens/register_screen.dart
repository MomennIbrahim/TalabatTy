import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';
import 'package:foodc_app/core/widgets/logo_widget.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/custom_or_text.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/custom_text.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/icons_login.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/create_account_button.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/log_in_text.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                text: 'create account'.toUpperCase(),
                style: Styles.styleBlack32,
              ),
              Gap(35.h),
              CustomTextField(
                  lable: 'Name', controller: TextEditingController()),
              Gap(16.h),
              CustomTextField(
                  lable: 'Email Address', controller: TextEditingController()),
              Gap(16.h),
              CustomTextField(
                  lable: 'Password', controller: TextEditingController()),
              Gap(30.h),
              const CreateAccountButton(),
              Gap(25.h),
              const CustomOrText(),
              Gap(25.h),
              const IconsLogin(),
              Gap(25.h),
              const LoginText(),
              Gap(30.h),
            ],
          )),
    );
  }
}
