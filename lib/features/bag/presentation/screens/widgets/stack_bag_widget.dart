import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../home/presentation/screens/widgets/background_image.dart';

class StackBagWidget extends StatelessWidget {
  const StackBagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BackGroundImage(height: MediaQuery.of(context).size.height / 2.35),
            Image(
              image: const AssetImage('assets/images/bag.png'),
              width: 150.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Column(
          children: [
            Gap(50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'assets/images/menu.svg',
                  width: 42.w,
                  height: 42.h,
                ),
              ),
            ),
            Gap(37.h),
            Text(
              'MY BAG',
              style: Styles.styleCabinSketch24,
            ),
          ],
        ),
      ],
    );
  }
}
