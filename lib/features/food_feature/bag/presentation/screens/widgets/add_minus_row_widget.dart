import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';


class AddMinusRowWidget extends StatelessWidget {
  const AddMinusRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Sausage Hawawshi',
              style: Styles.style18,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            child: SvgPicture.asset('assets/images/plus-02.svg'),
          ),
          Gap(10.w),
          Container(
            width: 97.w,
            height: 32.h,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEFEFE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x1E000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Constance.kWhiteColor,
                  radius: 12.r,
                  child: SvgPicture.asset(
                    'assets/images/plus-02.svg',
                    color: Colors.black,
                  ),
                ),
                const Text('1'),
                CircleAvatar(
                  radius: 12.r,
                  backgroundColor: Constance.kPrimaryColor,
                  child: const Icon(
                    Icons.add,
                    color: Constance.kWhiteColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
