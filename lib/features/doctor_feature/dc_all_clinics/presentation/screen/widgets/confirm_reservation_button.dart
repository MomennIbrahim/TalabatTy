import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';

class ConfirmReservationButton extends StatelessWidget {
  const ConfirmReservationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal34,
      child: CustomButton(
        text: 'Confirm Reservation',
        onPressed: () {},
        textStyle: Styles.styleWhite20,
        buttonColor: Constance.kBLueColor,
      ),
    );
  }
}
