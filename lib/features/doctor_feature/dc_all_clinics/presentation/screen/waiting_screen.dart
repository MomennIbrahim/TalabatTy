import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(117.h),
            Text(
              'Thank you for using Foods We are always here',
              textAlign: TextAlign.center,
              style: Styles.styleBlack24,
            ),
            Padding(
              padding: Constance.paddingHorizontal26,
              child: SvgPicture.asset(
                'assets/images/Waiting-pana.svg',
                height: 316.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Gap(65.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: CustomButton(
                text: 'Done',
                onPressed: () {},
                textStyle: Styles.styleWhite20,
                buttonColor: Constance.kBLueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
