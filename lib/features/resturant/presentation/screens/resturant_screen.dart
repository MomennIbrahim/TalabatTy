import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/all_resturant_item.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/all_resturant_text.dart';
import 'package:foodc_app/features/resturant/presentation/screens/widgets/stack_resturant_widget.dart';
import 'package:gap/gap.dart';

class ResturantScreen extends StatelessWidget {
  const ResturantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StackRestaurantWidget(),
          Gap(30.h),
          const AllResturantText(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 7.w,
              mainAxisSpacing: 25.h,
              children: List.generate(20, (index) => const AllResturantItem(),)
            ),
          ),
        ],
      ),
    );
  }
}
