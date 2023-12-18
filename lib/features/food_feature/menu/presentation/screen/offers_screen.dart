import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/offers_grideview.dart';
import 'package:gap/gap.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FadeInLeft(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackGround(text: 'offers'),
              Gap(32.h),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: Row(
                  children: [
                    const Icon(Icons.discount_outlined),
                    Text(
                      'promo code',
                      style: Styles.style20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: Constance.paddingHorizontal24,
                child: const Divider(),
              ),
              Gap(10.h),
              Padding(
                padding: Constance.paddingHorizontal26,
                child: Text(
                  'Click on the card to get the promo code',
                  style: Styles.style12,
                ),
              ),
              Gap(24.h),
             const AllRestaurantOffersGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
