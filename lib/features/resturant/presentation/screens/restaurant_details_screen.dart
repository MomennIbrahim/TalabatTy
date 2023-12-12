import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/best_seller_dishes_listview.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/rating_bar_and_res_name.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/restaurant_review_listview.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/stack_restaurant_details_widget.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/view_menu_button.dart';
import 'package:gap/gap.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSlideAnimate(
        slide: Constance.up,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StackRestaurantDetailsWidget(),
              Gap(130.h),
              const RatingBarAndResName(),
              Gap(22.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'El Maqam ',
                        style: Styles.stylePrimaryColor18
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'delivers to you',
                        style:
                            Styles.style18.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'El Maqam is a restaurant located in Egypt, serving a selection of Pies, Pizza, Pasta that delivers across Semouha - Sidi Gaber Station, Semouha - Sidi Gaber Station 2 and Sidi Besher Bahary. Their best selling dishes are Margherita Pizza, Oriental Sausage And Pastrami Pie, Pastrami Pie and Oriental Sausage Pie, although they have a variety of dishes and meals to choose from like Pies, Pizza, Pasta.',
                  style: Styles.style16,
                ),
              ),
              Gap(18.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Text(
                  'Best Seller Dishes',
                  style: Styles.style16W500,
                ),
              ),
              Gap(18.h),
              const BestSellerDishesListView(),
              Gap(22.h),
              const ViewMenuButton(),
              Gap(32.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'El Maqam Reviews',
                      style: Styles.style16W500,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Add Review',
                          style: Styles.style16W500
                              .copyWith(color: Constance.kPrimaryColor),
                        ))
                  ],
                ),
              ),
              const RestaurantReviewListView(),
              Gap(32.h),
            ],
          ),
        ),
      ),
    );
  }
}
