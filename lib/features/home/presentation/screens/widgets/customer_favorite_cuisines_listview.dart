import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/home/presentation/screens/widgets/meal_item.dart';
import 'package:gap/gap.dart';

class CustomerFavoriteCuisinesListView extends StatelessWidget {
  const CustomerFavoriteCuisinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
      const MealItem(),
      separatorBuilder: (context, index) => Gap(10.h),
      itemCount: 5,
    );
  }
}
