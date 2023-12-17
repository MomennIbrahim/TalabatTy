import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/restaurant_review_item.dart';
import 'package:gap/gap.dart';

class ClinicsReviewListViewHorizontal extends StatelessWidget {
  const ClinicsReviewListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        padding: Constance.paddingHorizontal24,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CustomReviewItem(),
        separatorBuilder: (context, index) => Gap(12.w),
        itemCount: 5,
      ),
    );
  }
}
