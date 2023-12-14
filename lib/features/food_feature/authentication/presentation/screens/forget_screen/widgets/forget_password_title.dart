import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';


class ForgetPasswordTitle extends StatelessWidget {
  const ForgetPasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password?',
      textAlign: TextAlign.center,
      style: Styles.styleBlack32,
    );
  }
}
