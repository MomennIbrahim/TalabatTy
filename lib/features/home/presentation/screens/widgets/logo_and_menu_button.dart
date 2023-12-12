import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import '../../../../../core/constance.dart';
import '../../../../../core/utlis/styles.dart';

class LogoAndMenuButton extends StatelessWidget {
  const LogoAndMenuButton({super.key});

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
                style: Styles.styleBlue20,
              ),
            ],
          ),
        ),
        const MenuIcon(),
      ],
    );
  }
}
