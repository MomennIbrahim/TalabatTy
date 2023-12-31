import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/widgets/stack_profile_widget.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.isFood = true});

  final bool isFood;

  @override
  Widget build(BuildContext context) {
    return CustomSlideAnimate(
      slide: Constance.up,
      child: Column(
        children: [
          StackProfileWidget(isFood: isFood),
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
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .push(AppRouter.kEditProfileScreen,);
                        },
                        child: Text(
                          'Edit Profile',
                          style: Styles.style20,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      isFood
                          ? GoRouter.of(context).push(AppRouter.kMyOrderScreen)
                          : GoRouter.of(context)
                              .push(AppRouter.kDoctorMyReservationScreen);
                    },
                    child: Row(
                      children: [
                        Gap(14.w),
                        const Icon(
                          Icons.shopping_bag_outlined,
                        ),
                        Gap(8.w),
                        Text(
                          isFood?'My Order':'My Reservation',
                          style: Styles.style20,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kSavedAddressScreen);
                    },
                    child: Row(
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
