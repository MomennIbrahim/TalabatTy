import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../home/presentation/screens/widgets/background_image.dart';

class StackProfileWidget extends StatelessWidget {
  const StackProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(height: MediaQuery.of(context).size.height / 3.5),
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
              'MY PROFILE',
              style: Styles.styleCabinSketch24,
            ),
          ],
        ),
      ],
    );
  }
}
