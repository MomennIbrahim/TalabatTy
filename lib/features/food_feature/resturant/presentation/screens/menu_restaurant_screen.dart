import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/core/widgets/custom_text.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/meal_item.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/more_discount_item.dart';
import 'package:gap/gap.dart';

class MenuRestaurantScreen extends StatefulWidget {
  const MenuRestaurantScreen({super.key});

  @override
  State<MenuRestaurantScreen> createState() => _MenuRestaurantScreenState();
}

class _MenuRestaurantScreenState extends State<MenuRestaurantScreen>
    with TickerProviderStateMixin {
  final List<String> menu = [
    'Best selling',
    'Hawashi',
    'Pies',
    'Pizza',
    'Burger',
  ];

  final List<String> menu2 = [
    '1 Best selling',
    '2 Hawashi',
    '3 Pies',
    '4 Pizza',
    '5 Burger',
  ];

  final List<String> menu3 = [
    '6 Best selling',
    '7 Hawashi',
    '8 Pies',
    '9 Pizza',
    '10 Burger',
  ];

  List<Widget> widgets = [
    const MealItem(),
    Padding(
      padding:Constance.paddingHorizontal24,
      child: const MoreDiscountItem(image: 'assets/images/Screenshot.png',title: 'Sausage Hawawshi El maqam'),
    ),
    const MealItem(),
    Padding(
      padding:Constance.paddingHorizontal24,
      child: const MoreDiscountItem(image: 'assets/images/Screenshot.png',title: 'Sausage Hawawshi El maqam'),
    ),
    const MealItem(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomSlideAnimate(
        slide: Constance.up,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackGroundImage(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: [
                    Gap(50.h),
                    const IconBackAndMenuRow(),
                    Gap(22.h),
                    const CustomText(text: 'restaurant',),
                  ],
                ),
              ),
              Gap(32.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'Menu',
                  style: Styles.styleBlack24,
                ),
              ),
              Gap(18.h),
              SizedBox(
                height: 40.h,
                child: ListView.separated(
                  padding: Constance.paddingHorizontal24,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 11.0.h, horizontal: 17.w),
                      decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Constance.kPrimaryColor
                              : Constance.kWhiteColor,
                          border: Border.all(color: Constance.kPrimaryColor),
                          borderRadius: BorderRadius.circular(62.r)),
                      child: Text(
                        menu[index],
                        style: currentIndex == index
                            ? Styles.styleWhite16
                            : Styles.styleWhite16
                                .copyWith(color: Constance.kPrimaryColor),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Gap(12.w),
                  itemCount: 5,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>  widgets[currentIndex],
                separatorBuilder: (context, index) => Gap(10.h),
                itemCount: widgets.length,
              ),
              Gap(10.h)
            ],
          ),
        ),
      ),
    );
  }
}
