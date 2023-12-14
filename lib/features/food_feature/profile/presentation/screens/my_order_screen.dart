import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/widgets/stack_profile_widget.dart';
import 'package:gap/gap.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StackProfileWidget(hasBackIcon: true),
          Gap(32.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: Text(
              'My Order',
              style: Styles.style20,
            ),
          ),
          Gap(24.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 23.h),
              decoration: BoxDecoration(
                  color: Constance.kWhiteColor,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'El Maqam - Semouha',
                        style: Styles.styleGrey18,
                      ),
                      Gap(12.w),
                      Expanded(
                        child: Text(
                          'Date 14/82023',
                          style: Styles.styleGrey16,
                        ),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  Text(
                    'Sausage Hawawshi',
                    style: Styles.styleGrey18,
                  ),
                  Gap(17.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Address',
                        style: Styles.styleGrey16,
                      ),
                      Gap(24.w),
                      Expanded(
                          child: Text(
                        'Alexandria, Smouha, Smouha Circle, Zohour Bargout Building, floor 4, Apartment 2',
                        style: Styles.styleGrey14,
                      )),
                    ],
                  ),
                  Gap(17.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: Styles.styleGrey18,
                      ),
                      Text(
                        'EGP 95.00',
                        style: Styles.styleGrey16,
                      ),
                    ],
                  ),
                  Gap(12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery fee',
                        style: Styles.styleGrey18,
                      ),
                      Text(
                        'EGP 11.99',
                        style: Styles.styleGrey16,
                      ),
                    ],
                  ),
                  Gap(12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total amount',
                        style: Styles.styleGrey18,
                      ),
                      Text(
                        'EGP 106.99',
                        style: Styles.styleGrey16,
                      ),
                    ],
                  ),
                  Gap(32.h),
                  CustomButton(text: 'Order it again', onPressed: (){}, textStyle: Styles.styleWhite20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
