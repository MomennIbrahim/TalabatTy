import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllResturantText extends StatelessWidget {
  const AllResturantText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'All ',
              style: TextStyle(
                color: Color(0xFFFC7E7E),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'Restaurants',
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
