import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';

class LogoAndMenuButton extends StatelessWidget {
  const LogoAndMenuButton({super.key, this.isFood = true});

  final bool isFood;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: Constance.kLogoName,
                style: Styles.style20.copyWith(
                    color: Constance.kPrimaryColor,
                    fontFamily: Constance.cabinSketchFont),
              ),
              TextSpan(
                text: Constance.kLogoName2,
                style: Styles.styleBlue20.copyWith(fontFamily: Constance.cabinSketchFont,fontSize: 26),
              ),
            ],
          ),
        ),
        MenuIcon(isFood: isFood),
      ],
    );
  }
}
