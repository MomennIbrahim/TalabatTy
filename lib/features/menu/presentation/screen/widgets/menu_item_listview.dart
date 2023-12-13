import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
   MenuItem({super.key});

  final List<String> menuList = [
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
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kFavoriteScreen);
                  },
                  child: Text(
                    menuList[index],
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
