import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utlis/styles.dart';

class CustomOrText extends StatelessWidget {
  const CustomOrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 120.w,child: const Divider(thickness: 2,color: Colors.black38,)),
        Text('Or',style: Styles.style24.copyWith(color: const Color(0xFF959595)),),
        SizedBox(width: 120.w,child: const Divider(thickness: 2,color: Colors.black38,)),
      ],
    );
  }
}
