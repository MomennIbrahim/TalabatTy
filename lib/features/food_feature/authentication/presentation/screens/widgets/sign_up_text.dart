import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:go_router/go_router.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kRegisterScreen);
      },
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Don’t have an account? ',
                style: Styles.style18,
              ),
              TextSpan(
                text: 'Sign Up',
                style: Styles.style18.copyWith(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
