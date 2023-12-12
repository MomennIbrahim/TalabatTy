import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class ViewMenuButton extends StatelessWidget {
  const ViewMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: CustomButton(
          text: 'View Menu', onPressed: () {
            GoRouter.of(context).push(AppRouter.kMenuRestaurantScreen);
      }, textStyle: Styles.styleWhite20),
    );
  }
}
