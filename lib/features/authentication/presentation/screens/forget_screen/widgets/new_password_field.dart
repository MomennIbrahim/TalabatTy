import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_text_field.dart';

class NewPasswordField extends StatelessWidget {
  const NewPasswordField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(controller: controller, lable: 'New Password');
  }
}
