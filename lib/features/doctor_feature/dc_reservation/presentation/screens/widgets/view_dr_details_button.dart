import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';

class ViewDoctorDetailsButton extends StatelessWidget {
  const ViewDoctorDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal10,
      child: CustomButton(
        text: 'View Dr. details',
        onPressed: () {},
        textStyle: Styles.styleWhite20,
        buttonColor: Constance.kBLueColor,
      ),
    );
  }
}
