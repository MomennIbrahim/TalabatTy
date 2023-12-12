import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/home/presentation/screens/widgets/more_discount_item.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MoreDiscountListView extends StatelessWidget {
  const MoreDiscountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158.h,
      child: ListView.separated(
        padding: Constance.paddingHorizontal24,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => GestureDetector(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kAllRestaurantDiscountScreen);
          },
          child: const MoreDiscountItem(),
        ),
        separatorBuilder: (context,index)=> Gap(19.w),
        itemCount: 5,
      ),
    );
  }
}
