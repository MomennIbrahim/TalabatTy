import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utlis/styles.dart';

class BackTextButton extends StatelessWidget {
  const BackTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kLoginScreen);
        },
        child: Text(
          'Back to login',
          style: Styles.styleBlue20,
        ));
  }
}
