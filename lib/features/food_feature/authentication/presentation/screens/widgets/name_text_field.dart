import 'package:flutter/material.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        lable: 'Name', controller: controller);
  }
}
