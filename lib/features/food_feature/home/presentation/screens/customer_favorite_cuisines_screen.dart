import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/customer_favorite_cuisines_listview.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/stack_resturant_widget.dart';
import 'package:gap/gap.dart';

class CustomerFavoriteCuisinesScreen extends StatelessWidget {
  const CustomerFavoriteCuisinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(
        slide: Constance.left,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StackResWidget(),
              Gap(32.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'Sandwich',
                  style: Styles.stylePrimaryColor24,
                ),
              ),
              const CustomerFavoriteCuisinesListView(),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
