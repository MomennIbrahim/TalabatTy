import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/core/widgets/restaurant_text.dart';
import 'package:foodc_app/core/widgets/search_field.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class StackRestaurantDetailsWidget extends StatelessWidget {
  const StackRestaurantDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        BackGroundImage(
            height: MediaQuery.of(context).size.height / 2.3,
            child: Column(
              children: [
                Gap(40.h),
                const IconBackAndMenuRow(),
                Gap(23.h),
                const RestaurantText(),
                Gap(8.h),
                Text(
                  'Select your area to see the restaurant menu',
                  style: Styles.styleWhite16,
                ),
                Gap(16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: const SearchField(),
                ),
              ],
            )),
        Positioned(
          bottom: -115.h,
          child: Container(
            width: 180.w,
            height: 170.h,
            decoration: ShapeDecoration(
              shadows: const [
                BoxShadow(
                    blurRadius: 1.5,
                    spreadRadius: 1.5,
                    offset: Offset(0,2),
                    color: Colors.grey
                )
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/maqam.png"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.r),
                side: const BorderSide(color: Constance.kWhiteColor,width: 5),
              ),
            ),
          ),
        )
      ],
    );
  }
}
