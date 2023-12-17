import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:gap/gap.dart';

class RatingBarAndResName extends StatelessWidget {
  const RatingBarAndResName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(
          'El Maqam',
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Gap(5.w),
        const CustomRatingWidget(),
      ],
    );
  }
}
