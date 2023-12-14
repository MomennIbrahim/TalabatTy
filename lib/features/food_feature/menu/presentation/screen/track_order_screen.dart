import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_tracker.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/slider_widget.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/total_price_widget.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/track_order_on_way_button.dart';
import 'package:gap/gap.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FadeInLeft(
          child: Column(
            children: [
              const CustomBackGround(text: 'track order'),
              Gap(32.h),
              const SliderWidget(),
              Gap(33.h),
              const CustomTracker(),
              Gap(14.h),
              const TotalPriceWidget(),
              Gap(24.h),
              const TrackOrderOnWayButton(),
              Gap(42.h),
            ],
          ),
        ),
      ),
    );
  }
}
