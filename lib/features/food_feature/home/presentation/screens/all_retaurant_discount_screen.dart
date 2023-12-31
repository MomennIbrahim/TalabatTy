import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/core/widgets/custom_text.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/more_discount_item.dart';
import 'package:gap/gap.dart';

class AllRestaurantDiscountScreen extends StatelessWidget {
  const AllRestaurantDiscountScreen({super.key});

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
                    const CustomText(text: 'restaurant'),
                  ],
                ),
              ),
              Gap(32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: Text(
                  'All Restaurant Discounts',
                  style: Styles.style20,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 11.w,
                  mainAxisSpacing: 18.h,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                      10,
                      (index) => MoreDiscountItem(
                        title: 'Sausage Hawawshi El maqam',
                        mealImageWidth: 50.w,
                        image: 'assets/images/Screenshot.png',
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
