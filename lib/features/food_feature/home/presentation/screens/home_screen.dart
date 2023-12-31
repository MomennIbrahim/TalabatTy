import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/category_customer_favorite_cuisines_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/doctor_container.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/food_container.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/more_discount_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/stack_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSlideAnimate(
      slide: Constance.up,
      child: RefreshIndicator(
        color: Constance.kPrimaryColor,
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StackHomeWidget(),
              Gap(50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('More Discount', style: Styles.stylePrimaryColor18),
                ),
              ),
              Gap(23.h),
              const MoreDiscountListViewHorizontal(),
              Gap(28.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'Customer Favorite Cuisines',
                  style: Styles.styleGrey16.copyWith(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Gap(18.h),
              const CategoryCustomerFavoriteCuisinesListView(),
              Gap(30.h),
              const FoodContainer(),
              Gap(18.h),
              const DoctorContainer(),
              Gap(30.h),
            ],
          ),
        ),
      ),
    );
  }

 Future<void>  _refresh(){
    return Future.delayed(const Duration(seconds: 1),);
  }
}
