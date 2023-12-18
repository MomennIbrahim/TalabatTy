import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class PromoCodeItem extends StatelessWidget {
  const PromoCodeItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(15.r),border: Border.all(color: Colors.grey[300]!)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image(
            image: AssetImage(image),
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
