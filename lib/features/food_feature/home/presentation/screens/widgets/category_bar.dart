import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -31.h,
      left: 24.w,
      right: 24.w,
      child: Container(
        width: double.infinity,
        height: 62.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFFDFDFD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 4,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=> Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffFD7E7E),
                  child: SvgPicture.asset(
                    'assets/images/10 truck copy 2.svg',
                    width: 18.w,
                    height: 18.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(4.w),
                SizedBox(width: 50.w,child: Text('Fastest Delivery',style: Styles.style12.copyWith(color: Colors.black),)),
              ],
            ),
            separatorBuilder: (context,index)=> SizedBox(width: 3.w,),
            itemCount: 4,
          ),
        ),
      ),
    );
  }
}
