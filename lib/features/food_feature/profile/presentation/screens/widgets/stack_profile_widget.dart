import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/back_icon.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class StackProfileWidget extends StatelessWidget {
  const StackProfileWidget({super.key, this.hasBackIcon = false, this.isFood = true});

  final bool hasBackIcon;
  final bool isFood;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(height: MediaQuery.of(context).size.height / 3.5),
        Column(
          children: [
            Gap(50.h),
            hasBackIcon
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackIcon(),
                      Padding(
                        padding: Constance.paddingHorizontal24,
                        child: MenuIcon(isFood: isFood),
                      ),
                    ],
                  )
                : Padding(
                    padding: Constance.paddingHorizontal24,
                    child: MenuIcon(isFood: isFood),
                  ),
            Gap(37.h),
            Text(
              'my profile'.toUpperCase(),
              style: Styles.styleCabinSketch24,
            ),
          ],
        ),
      ],
    );
  }
}
