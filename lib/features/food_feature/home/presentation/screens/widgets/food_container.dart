import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/hungry_or_cold_widget.dart';
import 'package:go_router/go_router.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).replace(AppRouter.kLayoutScreen);
      },
      child: const HungryOrColdWidget(
          title: 'are you hungry?',
          subTitle:
          'Our team is always ready to prepare your food at any time. Discover our restaurants now! We have delivery, offers and discounts.',
          image: 'assets/images/unsplash_LV2p9Utbkbw.png'),
    );
  }
}
