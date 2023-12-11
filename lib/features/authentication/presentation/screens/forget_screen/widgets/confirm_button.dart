import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/constance.dart';
import '../../../../../../core/utlis/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Confirm',
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kSuccessScreen);
      },
      textStyle: Styles.stylePrimaryColor24,
      buttonColor: Colors.white,
      borderSide: const BorderSide(color: Constance.kPrimaryColor,width: 2.5),
    );
  }
}
