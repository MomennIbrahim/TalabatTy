import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/add_address_button.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/add_minus_row_widget.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/bag_details_widget.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/resturant_name_text.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constance.dart';
import '../../../../../core/utlis/styles.dart';

class BagItem extends StatelessWidget {
  const BagItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.h),
      child: SizedBox(
        height: 353.h,
        child: Card(
          color: const Color(0xFFFEFEFE),
          elevation: 2.5,
          shadowColor: Colors.grey[400],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffBE5F5F),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      topLeft: Radius.circular(12.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0.w.h),
                  child: Text(
                    'My Bag',
                    style:
                        Styles.style18.copyWith(color: Constance.kWhiteColor),
                  ),
                ),
              ),
              Gap(14.h),
              const RestaurantNameText(),
              const AddMinusRowWidget(),
              Gap(17.h),
              const BagDetailsWidget(text: 'Subtotal', price: 'EGP 95.00'),
              Gap(16.h),
              const BagDetailsWidget(text: 'Delivery fee', price: 'EGP 11.99'),
              Gap(16.h),
              BagDetailsWidget(
                text: 'Total amount',
                price: 'EGP 106.99',
                textStyle: Styles.style18,
              ),
              Gap(32.h),
              const AddAddressButton(),
            ],
          ),
        ),
      ),
    );
  }
}
