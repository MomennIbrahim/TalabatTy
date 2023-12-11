import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'custom_login_icon.dart';

class IconsLogin extends StatelessWidget {
  const IconsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomLoginIcons(image: 'assets/images/super-g.svg'),
        Gap(20.w),
        const CustomLoginIcons(image: 'assets/images/Facebook.svg'),
        Gap(20.w),
        const CustomLoginIcons(image: 'assets/images/Shape.svg'),
      ],
    );
  }
}
