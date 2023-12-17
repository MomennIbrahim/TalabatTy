import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class DoctorCardItem extends StatelessWidget {
  const DoctorCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: 230.w,
      decoration: ShapeDecoration(
        color: const Color(0xFFFEFEFE),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Gap(18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '4.9',
                    style: Styles.style16,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0.r,
                    backgroundColor: Colors.black,
                  ),
                  CircleAvatar(
                    radius: 47.0.r,
                    backgroundImage: const AssetImage(
                        'assets/images/Ellipse 36.png'),
                  )
                ],
              ),
              Icon(
                Icons.favorite_border,
                size: 32.r,
              )
            ],
          ),
          Gap(11.h),
          Text(
            'Dr. Ramy Shokry ',
            style: Styles.style18,
          ),
          Gap(12.h),
          Text(
            'General ophthalmologist ',
            style: Styles.style16,
          ),
          Gap(11.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sut,Sun,Mon',
                style: Styles.style12,
              ),
              Text(
                '10:30 AM-3:30',
                style: Styles.style12,
              ),
            ],
          ),
          Gap(26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'fees 200 L.E',
                style: Styles.style18
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ]),
                child: CircleAvatar(
                    backgroundColor: Constance.kWhiteColor,
                    child: SvgPicture.asset(
                      'assets/images/Vector.svg',
                      width: 15.w,
                      height: 15.h,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
