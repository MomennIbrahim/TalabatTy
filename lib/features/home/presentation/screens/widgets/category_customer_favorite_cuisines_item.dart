import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utlis/styles.dart';

class CategoryCustomerFavoriteCuisinesItem extends StatelessWidget {
  const CategoryCustomerFavoriteCuisinesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 20.0.w),
      child: Container(
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
      ),
    );
  }
}
