import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/features/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';

class TestScreen extends StatelessWidget {
   TestScreen({super.key});

  List<String> menuList = [
    'My Favorite',
    'Track Order',
    'Offers',
    'Language',
    'Get Help',
    'About Us',
    'Log Out',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              BackGroundImage(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 5,
                child: const IconBackAndMenuRow(),
              ),
              Positioned(
                  right: 25.w,
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
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        menuList[index],
                        style: Styles.styleBlack24.copyWith(
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
              separatorBuilder: (context,index) => const Divider(),
              itemCount: menuList.length,
            ),
          )
        ],
      ),
    );
  }
}
