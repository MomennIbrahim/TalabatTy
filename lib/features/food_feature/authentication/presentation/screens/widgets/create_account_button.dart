import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: 'Create Account', onPressed: () {}, textStyle: Styles.style24);
  }
}
