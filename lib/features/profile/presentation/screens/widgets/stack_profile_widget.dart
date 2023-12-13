import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/back_icon.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../home/presentation/screens/widgets/background_image.dart';

class StackProfileWidget extends StatelessWidget {
  const StackProfileWidget({super.key, this.hasBackIcon = false});

  final bool hasBackIcon;

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
                        child: const MenuIcon(),
                      ),
                    ],
                  )
                : Padding(
                    padding: Constance.paddingHorizontal24,
                    child: const MenuIcon(),
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
