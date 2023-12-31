import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({super.key, this.buttonColor});

  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: CustomButton(
        buttonColor: buttonColor?? Constance.kPrimaryColor,
          text: 'Add Address',
          onPressed: () {
          GoRouter.of(context).push(AppRouter.kDoctorReservationSummaryScreen);
          },
          textStyle:
          Styles.style20.copyWith(color: Constance.kWhiteColor)),
    );
  }
}
