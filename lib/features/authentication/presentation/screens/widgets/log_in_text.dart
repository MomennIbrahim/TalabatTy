import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utlis/styles.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kLoginScreen);
      },
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style: Styles.style18,
              ),
              TextSpan(
                text: 'Log in',
                style: Styles.style18.copyWith(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
