import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_menu/presentation/screens/widgets/clinic_offer_gridview.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/offers_grideview.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/all_resturant_item.dart';
import 'package:gap/gap.dart';

class DcOffersScreen extends StatelessWidget {
  const DcOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomBackGround(text: 'offers'),
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
         const ClinicsOffersGridView(),
        ],
      ),
    );
  }
}
