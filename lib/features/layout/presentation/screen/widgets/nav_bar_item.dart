import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/layout/presentation/controller/layout_cubit.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {
        super.key,
        required this.index,
        required this.label,
        required this.icon,
        required this.context,
      });

  final int index;
  final String label;
  final String icon;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return index == LayoutCubit.get(context).currentIndex
        ? Center(
      child: Stack(
        children: [
          Container(
            width: 85.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100.r)),
            child: Padding(
              padding: EdgeInsets.only(left: 40.0.w),
              child: Center(
                  child: Text(
                    label,
                    style: Styles.styleWhite12,
                    textAlign: TextAlign.right,
                  )),
            ),
          ),
          Positioned(
            top: -4.h,
            left: -2.w,
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                icon,
                color: Constance.kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    )
        : Center(
      child: SizedBox(
        width: 28.w,
        height: 35.h,
        child: SvgPicture.asset(
          icon,
          color: Colors.black,
          height: 50.h,
        ),
      ),
    );
  }
}
