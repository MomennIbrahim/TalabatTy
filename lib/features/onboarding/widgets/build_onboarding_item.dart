import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/onboarding/model/onboarding_model.dart';
import 'package:foodc_app/features/onboarding/widgets/build_smooth_indicator.dart';
import 'package:foodc_app/features/onboarding/widgets/onboarding_button.dart';
import 'package:gap/gap.dart';
import '../../../core/utlis/styles.dart';

class BuildOnBoardingItem extends StatelessWidget {
  const BuildOnBoardingItem(
      {super.key,
      required this.model,
      required this.index,
      required this.onPressed,
      required this.pageController,
      required this.lenght});

  final OnBoardingModel model;
  final int index;
  final int lenght;
  final Function onPressed;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(MediaQuery.of(context).size.height / 2.1),
              Text(
                model.title,
                style: Styles.styleWhite32.copyWith(
                  color: model.titleColor,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(50.h),
              BuildSmoothIndicator(
                lenght: lenght,
                model: model,
                pageController: pageController,
              ),
              Gap(50.h),
              OnBoardingButton(
                  model: model,
                  onPressed: () {
                    onPressed();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
