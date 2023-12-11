import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:go_router/go_router.dart';
import 'category_customer_favorite_cuisines_item.dart';

class CategoryCustomerFavoriteCuisinesListView extends StatelessWidget {
  const CategoryCustomerFavoriteCuisinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91.h,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(onTap: (){
          GoRouter.of(context).push(AppRouter.kCustomerFavoriteCuisinesScreen);
        },child: const CategoryCustomerFavoriteCuisinesItem()),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
