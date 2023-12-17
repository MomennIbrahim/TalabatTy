import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';

class ReservationNowButton extends StatelessWidget {
  const ReservationNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: CustomButton(
        text: 'Reservation now',
        onPressed: () {},
        textStyle: Styles.styleWhite20,
        buttonColor: Constance.kBLueColor,
      ),
    );
  }
}
