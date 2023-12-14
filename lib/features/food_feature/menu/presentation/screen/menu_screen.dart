import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/menu_item_listview.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatelessWidget {
   const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(
        slide: 'down',
        child: Column(
          children: [
            Stack(
              children: [
                BackGroundImage(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap:  () {
                        GoRouter.of(context).pop();
                      },
                      child: Padding(
                        padding: Constance.paddingHorizontal24,
                        child: SvgPicture.asset(
                          'assets/images/menu.svg',
                          width: 42.w,
                          height: 42.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 30.w,
                    bottom: -10,
                    child: SvgPicture.asset(
                      'assets/images/Polygon 1.svg',
                      width: 25.w,
                      height: 25.h,
                    )),
              ],
            ),
            Gap(24.h),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'Menu',
                  style: Styles.style26,
                ),
              ),
            ),
            MenuItems(),
          ],
        ),
      ),
    );
  }
}
