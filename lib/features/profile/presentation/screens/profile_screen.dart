import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/profile/presentation/screens/widgets/stack_profile_widget.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StackProfileWidget(),
        Gap(48.h),
        Container(
          width: 327.w,
          height: 165.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFFEFEFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Gap(14.w),
                    const Icon(
                      Icons.edit,
                    ),
                    Gap(8.w),
                    Text(
                      'Edit Profile',
                      style: Styles.style20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Gap(14.w),
                    const Icon(
                      Icons.shopping_bag_outlined,
                    ),
                    Gap(8.w),
                    Text(
                      'My Order',
                      style: Styles.style20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Gap(14.w),
                    const Icon(
                      Icons.map_outlined,
                    ),
                    Gap(8.w),
                    Text(
                      'Saved Address',
                      style: Styles.style20.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
