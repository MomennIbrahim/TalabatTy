import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/send_again_button.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/send_button.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/verify_form.dart';
import 'package:gap/gap.dart';
import 'widgets/back_icon.dart';
import 'widgets/back_text_button.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              Text(
                'Verify Your Email',
                style: Styles.styleBlack32,
              ),
              Gap(18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0.w),
                child: Text(
                  'Please check your email for the 4-digit code',
                  style: Styles.style18.copyWith(
                    color: const Color(0xFF575757),
                  ),
                ),
              ),
              Gap(48.h),
              const VerifyForm(),
              Gap(48.h),
              const SendButton(),
              Gap(25.h),
              const SendAgainButton(),
              Gap(20.h),
              const BackTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
