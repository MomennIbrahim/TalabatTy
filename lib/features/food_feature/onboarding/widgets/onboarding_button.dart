import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/features/food_feature/onboarding/model/onboarding_model.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, required this.model, required this.onPressed});

  final OnBoardingModel model;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        buttonColor: Colors.white,
        text: model.buttonTitle,
        onPressed: () {
         onPressed();
        },
        textStyle:
        Styles.style20.copyWith(color: model.color));
  }
}
