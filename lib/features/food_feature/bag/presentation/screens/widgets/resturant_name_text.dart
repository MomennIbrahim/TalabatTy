import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class RestaurantNameText extends StatelessWidget {
  const RestaurantNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'El Maqam -',
              style: Styles.style18,
            ),
            TextSpan(text: ' Semouha', style: Styles.styleGrey18),
          ],
        ),
      ),
    );
  }
}
