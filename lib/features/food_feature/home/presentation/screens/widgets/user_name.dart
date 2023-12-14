import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome, Nada',
      style: Styles.style18.copyWith(
        fontFamily: Constance.cabinSketchFont,
        fontWeight: FontWeight.w700,
        color: Constance.kWhiteColor
      ),
    );
  }
}
