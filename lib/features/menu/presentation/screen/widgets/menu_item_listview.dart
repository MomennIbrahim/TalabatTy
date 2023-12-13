import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/menu/presentation/screen/about_us_screen.dart';
import 'package:foodc_app/features/menu/presentation/screen/favorite_screen.dart';
import 'package:foodc_app/features/menu/presentation/screen/language_screen.dart';
import 'package:foodc_app/features/menu/presentation/screen/offers_screen.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
   MenuItem({super.key});

  final List<String> menuList = [
    'My Favorite',
    'Offers',
    'Language',
    'About Us',
  ];

  final List<String> menuScreens=[
    AppRouter.kFavoriteScreen,
    AppRouter.kOfferScreen,
    AppRouter.kLanguageScreen,
    AppRouter.kAboutUsScreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: (){
                GoRouter.of(context).push(menuScreens[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30.h,
                  width: double.infinity,
                  child: Text(
                    menuList[index],
                    textAlign: TextAlign.center,
                    style: Styles.styleBlack24.copyWith(
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
        separatorBuilder: (context,index) => const Divider(),
        itemCount: menuList.length,
      ),
    );
  }
}
