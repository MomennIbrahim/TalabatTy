import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      lable: 'Email Adderss',
      controller: emailController,
      suffixIcon: const Icon(Icons.email_outlined,color: Constance.kGreyColor,),
    );
  }
}
