import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:foodc_app/core/widgets/custom_text.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class StackRestaurantWidget extends StatelessWidget {
  const StackRestaurantWidget({super.key, this.isFood = true});

  final bool isFood;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(height: MediaQuery.of(context).size.height / 2.35),
        Column(
          children: [
            Gap(50.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: MenuIcon(isFood: isFood),
            ),
            Gap(37.h),
            const CustomText(text: 'restaurant'),
            Gap(29.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: SizedBox(
                height: 50.h,
                child: SearchBar(
                  controller: TextEditingController(),
                  onTap: () {},
                  leading: SvgPicture.asset(
                    'assets/images/search.svg',
                    width: 18.w,
                    height: 18.h,
                  ),
                  trailing: [
                    SizedBox(
                        width: 100.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0.h),
                          child: CustomButton(
                            text: 'Search',
                            onPressed: () {},
                            textStyle: Styles.styleWhite16,
                            buttonColor: isFood? Constance.kPrimaryColor: Constance.kBLueColor,
                          ),
                        )),
                  ],
                  hintText: 'Find your Restaurant..',
                  hintStyle: MaterialStatePropertyAll(Styles.styleGrey14),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
