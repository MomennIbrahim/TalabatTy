import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: Constance.kLogoName,
              style: Styles.styleBlack32.copyWith(
                  color: Constance.kPrimaryColor,
                  fontFamily: Constance.cabinSketchFont),
            ),
            TextSpan(
              text: Constance.kLogoName2,
              style: Styles.styleBlack32.copyWith(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
