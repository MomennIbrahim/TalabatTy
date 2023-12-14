import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_home/presentation/screens/widgets/dc_customer_favorite_cuisines_listview.dart';
import 'package:foodc_app/features/doctor_feature/dc_home/presentation/screens/widgets/dc_more_discount_list_view_horizontal.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/doctor_container.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/food_container.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/stack_widget.dart';
import 'package:gap/gap.dart';

class DcHomeScreen extends StatelessWidget {
  const DcHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StackHomeWidget(isFood: false),
          Gap(50.h),
          const DcMoreDiscountListViewHorizontal(),
          Gap(28.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: Text(
              'Customer Favorite Cuisines',
              style: Styles.style16,
            ),
          ),
          Gap(18.h),
          const DcCustomerFavoriteCuisinesListViewHorizontal(),
          Gap(24.h),
          const FoodContainer(),
          Gap(18.h),
          const DoctorContainer(),
        ],
      ),
    );
  }
}
