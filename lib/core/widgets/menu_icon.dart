import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';

class MenuIcon extends StatefulWidget {
  const MenuIcon({super.key});

  @override
  State<MenuIcon> createState() => _MenuIconState();
}

class _MenuIconState extends State<MenuIcon> {
  bool isMenuScreen = false;
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
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap:  () {
        GoRouter.of(context).push(AppRouter.kMenuScreen);
        },
        child: SvgPicture.asset(
          'assets/images/menu.svg',
          width: 42.w,
          height: 42.h,
        ),
      ),
    );
  }
}
