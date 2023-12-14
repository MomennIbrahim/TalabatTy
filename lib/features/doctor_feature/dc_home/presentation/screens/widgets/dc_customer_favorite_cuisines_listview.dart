import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/features/doctor_feature/dc_home/presentation/screens/widgets/dc_customer_favorite_cuisines_item.dart';
import 'package:gap/gap.dart';

class DcCustomerFavoriteCuisinesListViewHorizontal extends StatelessWidget {
  const DcCustomerFavoriteCuisinesListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        padding: Constance.paddingHorizontal24,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> const DcCustomerFavoriteCuisinesItem(),
        separatorBuilder: (context,index)=> Gap(12.w),
        itemCount: 5,
      ),
    );
  }
}
