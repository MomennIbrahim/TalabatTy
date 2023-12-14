import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/all_resturant_item.dart';

class OffersGridView extends StatelessWidget {
  const OffersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      padding: Constance.paddingHorizontal24,
      shrinkWrap: true,
      mainAxisSpacing: 18.h,
      crossAxisSpacing: 6.w,
      crossAxisCount: 3,
      children: List.generate(9, (index) => const AllRestaurantItem()),
    );
  }
}
