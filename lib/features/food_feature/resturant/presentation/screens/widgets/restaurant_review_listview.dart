import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/restaurant_review_item.dart';
import 'package:gap/gap.dart';

class RestaurantReviewListView extends StatelessWidget {
  const RestaurantReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        itemBuilder: (context, index) => const RestaurantReviewItem(),
        separatorBuilder: (context, index) => Gap(10.w),
        itemCount: 5,
      ),
    );
  }
}
