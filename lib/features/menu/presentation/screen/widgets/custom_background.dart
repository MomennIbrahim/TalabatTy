import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/widgets/back_icon.dart';
import 'package:foodc_app/features/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return BackGroundImage(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(50.h),
          const BackIcon(),
          Gap(33.h),
          Align(
              alignment: Alignment.center,
              child: Text(
                text.toUpperCase(),
                style: Styles.styleCabinSketch24,
              ))
        ],
      ),
    );
  }
}
