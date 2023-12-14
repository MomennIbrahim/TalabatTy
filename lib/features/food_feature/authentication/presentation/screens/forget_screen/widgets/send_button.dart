import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Send',
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kNewPasswordScreen);
      },
      textStyle: Styles.stylePrimaryColor24,
      buttonColor: Colors.white,
      borderSide: const BorderSide(color: Constance.kPrimaryColor,width: 2.5),
    );
  }
}
