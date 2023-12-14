import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyField extends StatelessWidget {
  const VerifyField({super.key, required this.controller, required this.first, required this.last});

  final TextEditingController controller;
  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 45.h,
      child: TextFormField(
        // controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          focusedBorder: outLineInputBorder(),
          enabledBorder: outLineInputBorder(),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged: (value) {
          if (value.isNotEmpty && last == false) {
            FocusScope.of(context).nextFocus();
          }else if(value.isEmpty && first == false){
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }

  OutlineInputBorder outLineInputBorder(){
    return OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color(0xFFE6E6E6),
            strokeAlign: 2,
            width: 1.8),
        borderRadius: BorderRadius.circular(12.r));
  }
}
