import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/bag/presentation/screens/widgets/add_address_button.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/widgets/stack_profile_widget.dart';
import 'package:gap/gap.dart';

class SavedAddressScreen extends StatelessWidget {
  const SavedAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackProfileWidget(
              hasBackIcon: true,
            ),
            Gap(32.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Saved Address',
                style: Styles.style20,
              ),
            ),
            Gap(32.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 18.w),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFEFEFE),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Alexandria, Smouha, Smouha Circle, Zohour Bargout Building, fourth 4, Apartment 2',
                  style: Styles.styleGrey14,
                ),
              ),
            ),
            Gap(110.h),
           const AddAddressButton(),
          ],
        ),
      ),
    );
  }
}
