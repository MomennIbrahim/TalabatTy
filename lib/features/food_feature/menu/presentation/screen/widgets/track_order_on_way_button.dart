import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';

class TrackOrderOnWayButton extends StatelessWidget {
  const TrackOrderOnWayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: CustomButton(
          text: 'Track order on way',
          onPressed: () {},
          textStyle: Styles.styleWhite20),
    );
  }
}
