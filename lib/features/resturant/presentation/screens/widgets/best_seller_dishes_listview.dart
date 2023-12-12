import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/best_seller_disges_item.dart';
import 'package:gap/gap.dart';

class BestSellerDishesListView extends StatelessWidget {
  const BestSellerDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        padding: Constance.paddingHorizontal24,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => const BestSellerDishesItem(),
        separatorBuilder: (context,index) => Gap(10.w),
        itemCount: 5,
      ),
    );
  }
}
