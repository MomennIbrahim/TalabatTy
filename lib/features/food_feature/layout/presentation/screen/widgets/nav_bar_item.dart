import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.index,
    required this.label,
    required this.icon,
    required this.context, this.isFood = true,
    required this.currentIndex,
  });

  final int index;
  final int currentIndex;
  final String label;
  final String icon;
  final bool isFood ;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return index == currentIndex
        ? ZoomIn(
            duration: const Duration(milliseconds: 250),
            child: Center(
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
                        color: isFood ? Constance.kPrimaryColor:Constance.kBLueColor,
                      ),
                    ),
                  )
                ],
              ),
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
