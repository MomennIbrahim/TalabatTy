import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/all_restaurant_grid_view.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/all_resturant_text.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/stack_resturant_widget.dart';
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
            const StackRestaurantWidget(),
            Gap(30.h),
            const AllResturantText(),
            const AllRestaurantGridView(),
          ],
        ),
      ),
    );
  }
}
