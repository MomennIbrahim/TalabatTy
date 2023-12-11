import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utlis/styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kForgetPasswordScreen);
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text('Forget password',
            style: Styles.styleGrey14,),
      ),
    );
  }
}
