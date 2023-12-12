import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/styles.dart';

class AllRestaurantItem extends StatelessWidget {
  const AllRestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image(
            image: const AssetImage('assets/images/maqam.png'),
            fit: BoxFit.cover,
            width: 150.w,
            height: 120.h,
          ),
          Positioned(
            bottom: -20.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/path.svg',
                  width: 150.w,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  'El maqam',
                  style: Styles.styleGrey16.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
