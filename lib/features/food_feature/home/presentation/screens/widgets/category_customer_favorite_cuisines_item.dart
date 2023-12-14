import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class CategoryCustomerFavoriteCuisinesItem extends StatelessWidget {
  const CategoryCustomerFavoriteCuisinesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81.w,
      height: 91.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all()
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/images/burger.svg'),
          Text('Burger',style: Styles.style14,)
        ],
      ),
    );
  }
}
