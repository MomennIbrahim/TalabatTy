import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/food_feature/onboarding/model/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildSmoothIndicator extends StatelessWidget {
  const BuildSmoothIndicator(
      {super.key,
      required this.lenght,
      required this.model,
      required this.pageController});

  final int lenght;
  final OnBoardingModel model;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: pageController,
        count: lenght,
        effect: ExpandingDotsEffect(
          dotHeight: 10.h,
          dotWidth: 10.w,
          radius: 20,
          spacing: 5.0,
          dotColor: Colors.white,
          activeDotColor: model.color,
        ));
  }
}
