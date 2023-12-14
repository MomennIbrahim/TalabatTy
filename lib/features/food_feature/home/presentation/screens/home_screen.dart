import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/doctor_feature/dc_layout/presentation/screen/dc_layout_screen.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/category_customer_favorite_cuisines_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/hungry_or_cold_widget.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/more_discount_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/stack_widget.dart';
import 'package:foodc_app/features/food_feature/layout/presentation/screen/layout_screen.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSlideAnimate(
      slide: Constance.up,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackWidget(),
            Gap(50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('More Discount', style: Styles.stylePrimaryColor18),
              ),
            ),
            Gap(23.h),
            const MoreDiscountListView(),
            Gap(28.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Customer Favorite Cuisines',
                style: Styles.styleGrey16.copyWith(color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
            Gap(18.h),
            const CategoryCustomerFavoriteCuisinesListView(),
            Gap(30.h),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LayoutScreen()));
              },
              child: const HungryOrColdWidget(
                  title: 'are you hungry?',
                  subTitle:
                      'Our team is always ready to prepare your food at any time. Discover our restaurants now! We have delivery, offers and discounts.',
                  image: 'assets/images/unsplash_LV2p9Utbkbw.png'),
            ),
            Gap(18.h),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DcLayoutScreen()));
              },
              child: const HungryOrColdWidget(
                  title: 'Do you have a cold?',
                  subTitle:
                  'Don\'t worry, we are here to help you. Book your consultation quickly and easily.',
                  image: 'assets/images/Medicine uniform healthcare medical workers day concept.png',
              ),
            ),
            Gap(30.h),
          ],
        ),
      ),
    );
  }
}
