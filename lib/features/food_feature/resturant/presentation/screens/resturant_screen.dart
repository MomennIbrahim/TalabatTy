import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/custom_text_rich.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/all_restaurant_grid_view.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/stack_resturant_widget.dart';
import 'package:gap/gap.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSlideAnimate(
      slide: Constance.up,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackResWidget(),
            Gap(30.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: const CustomTextRich(textSpan1: 'All', textSpan2: 'Restaurant'),
            ),
            const AllRestaurantGridView(),
          ],
        ),
      ),
    );
  }
}
