import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      lable: 'Password',
      controller: passwordController,
      suffixIcon: const Icon(Icons.visibility_off,color: Constance.kGreyColor,),
    );
  }
}
