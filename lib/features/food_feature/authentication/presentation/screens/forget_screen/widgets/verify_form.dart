import 'package:flutter/material.dart';
import 'verify_field.dart';

class VerifyForm extends StatelessWidget {
  const VerifyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VerifyField(controller: TextEditingController(), first: true , last: false,),
          VerifyField(controller: TextEditingController(), first: true , last: false,),
          VerifyField(controller: TextEditingController(), first: true , last: false,),
          VerifyField(controller: TextEditingController(), first: false , last: true,),
        ],
      ),
    );
  }
}
