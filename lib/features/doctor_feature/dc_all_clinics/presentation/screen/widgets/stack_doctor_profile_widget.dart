import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/core/widgets/custom_text.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class StackDoctorProfileWidget extends StatelessWidget {
  const StackDoctorProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        BackGroundImage(
            height: MediaQuery.of(context).size.height / 2.7,
            child: Column(
              children: [
                Gap(40.h),
                const IconBackAndMenuRow(isFood: false),
                Gap(23.h),
                CustomText(
                  text: 'clinics'.toUpperCase(),
                ),
                Gap(8.h),
              ],
            )),
        Positioned(
          bottom: -80.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Constance.kWhiteColor,
                radius: 82.5.r,
              ),
              CircleAvatar(
                  radius: 80.r,
                  backgroundImage: const AssetImage(
                    'assets/images/Ellipse 36.png',
                  )),
            ],
          ),
        )
      ],
    );
  }
}
