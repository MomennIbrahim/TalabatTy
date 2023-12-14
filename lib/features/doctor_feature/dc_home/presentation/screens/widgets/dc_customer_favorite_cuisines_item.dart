import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class DcCustomerFavoriteCuisinesItem extends StatelessWidget {
  const DcCustomerFavoriteCuisinesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.black),
      child: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 25.w, vertical: 16.h),
            child: CircleAvatar(
              radius: 16.r,
              backgroundImage:
              const AssetImage('assets/images/Ellipse 36.jpg'),
            ),
          ),
          Text(
            'Dental',
            style: Styles.styleWhite13,
          ),
        ],
      ),
    );
  }
}
