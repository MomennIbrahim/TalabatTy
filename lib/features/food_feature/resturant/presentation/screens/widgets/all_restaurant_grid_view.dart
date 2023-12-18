import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/all_resturant_item.dart';
import 'package:go_router/go_router.dart';

class AllRestaurantGridView extends StatelessWidget {
  const AllRestaurantGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 7.w,
          mainAxisSpacing: 25.h,
          children: List.generate(9, (index) => GestureDetector(onTap: (){
            GoRouter.of(context).push(AppRouter.kRestaurantDetailsScreen);
          },child: const PromoCodeItem(image: 'assets/images/maqam.png',)),
          )
      ),
    );
  }
}
