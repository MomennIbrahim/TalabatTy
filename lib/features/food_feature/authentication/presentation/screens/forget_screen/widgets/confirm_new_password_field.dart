import 'package:flutter/material.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';

class ConfirmNewPasswordField extends StatelessWidget {
  const ConfirmNewPasswordField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(controller: controller, lable: 'Confirm New Password');
  }
}
