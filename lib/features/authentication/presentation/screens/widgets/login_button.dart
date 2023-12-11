import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomButton(
        text: 'Login', onPressed: () {
      GoRouter.of(context).push(AppRouter.kLayoutScreen);
    }, textStyle: Styles.style24);
  }
}
