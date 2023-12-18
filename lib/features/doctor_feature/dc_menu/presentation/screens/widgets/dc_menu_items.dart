import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_menu/presentation/screens/dc_favorites_screen.dart';
import 'package:foodc_app/features/doctor_feature/dc_menu/presentation/screens/dc_offers_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/about_us_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/language_screen.dart';

class DcMenuItems extends StatelessWidget {
  DcMenuItems({super.key});

  final List<String> dcMenuList = [
    'My Favorite',
    'Offers',
    'Language',
    'About Us',
  ];

  final List<Widget> menuScreens=[
    const DcFavoriteScreen(),
    const DcOffersScreen(),
    const LanguageScreen(isFood: false),
    const AboutUsScreen(isFood: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> menuScreens[index]));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30.h,
                  width: double.infinity,
                  child: Text(
                    dcMenuList[index],
                    textAlign: TextAlign.center,
                    style: Styles.styleBlack24.copyWith(
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
        separatorBuilder: (context,index) => const Divider(),
        itemCount: dcMenuList.length,
      ),
    );
  }
}

