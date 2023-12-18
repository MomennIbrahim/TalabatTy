import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/confirm_reservation_button.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/enter_code_row_widget.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/fees_price.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/reservation_summary_header_text.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/reservation_summary_info.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/stack_doctor_profile_widget.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:gap/gap.dart';

class ReservationSummaryScreen extends StatelessWidget {
  const ReservationSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StackDoctorProfileWidget(),
            Gap(90.h),
            const CustomRatingWidget(),
            Gap(8.h),
            Text(
              'Dr. Ramy Shokry',
              style: Styles.style18,
            ),
            Gap(32.h),
           const ReservationSummaryHeaderText(),
            Gap(18.h),
            Padding(
              padding: Constance.paddingHorizontal26,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Eye Clinic',
                  style: Styles.style20.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Gap(12.h),
            const ReservationSummaryInfo(),
            Gap(20.h),
            Padding(
              padding: Constance.paddingHorizontal26,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Payment Summary',
                  style: Styles.style18,
                ),
              ),
            ),
            Gap(11.h),
            Padding(
              padding: Constance.paddingHorizontal26,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cash Onley',
                  style: Styles.style16,
                ),
              ),
            ),
            Gap(9.h),
            const EnterCodeRowWidget(),
            Gap(24.h),
            const FeesPrice(),
            Gap(24.h),
            const ConfirmReservationButton(),
            Gap(24.h),
          ],
        ),
      ),
    );
  }
}
