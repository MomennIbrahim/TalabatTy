import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_text_field.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/age_textField.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/detection_location_toggle_widget.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/male_female_toggle_widget.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/normal_urgent_toggle_widget.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/reservation_text_bar.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/select_date_field.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/select_time_field.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/stack_doctor_profile_widget.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/name_text_field.dart';
import 'package:foodc_app/features/food_feature/bag/presentation/screens/widgets/add_address_button.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/widgets/text_over_text_field.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:gap/gap.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const StackDoctorProfileWidget(),
            Gap(100.h),
            const CustomRatingWidget(),
            Gap(8.h),
            Padding(
              padding: EdgeInsets.only(right: 24.w, left: 24.w, bottom: 48.h),
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: shapeDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReservationTextBar(),
                    Gap(18.h),
                    TextOverTextField(text: 'First Name', padding: 10.w),
                    Gap(12.h),
                    Padding(
                      padding: Constance.paddingHorizontal10,
                      child: NameTextField(controller: TextEditingController()),
                    ),
                    Gap(24.h),
                    TextOverTextField(text: 'Phone Number', padding: 10.w),
                    Gap(12.h),
                    Padding(
                      padding: Constance.paddingHorizontal10,
                      child: NameTextField(controller: TextEditingController()),
                    ),
                    Gap(18.h),
                    TextOverTextField(text: 'Gender', padding: 10.w),
                    Gap(12.h),
                    const MaleFemaleToggleWidget(),
                    Gap(16.h),
                    TextOverTextField(text: 'Age', padding: 10.w),
                    Gap(12.h),
                    const AgeTextField(),
                    Gap(18.h),
                    TextOverTextField(text: 'Detection Type', padding: 10.w),
                    Gap(12.h),
                    const NormalUrgentToggleWidget(),
                    Gap(18.h),
                    TextOverTextField(
                        text: 'Detection Location', padding: 10.w),
                    const DetectionLocationToggleWidget(),
                    Gap(22.h),
                    TextOverTextField(
                      text: 'Day of booking',
                      padding: 10.w,
                    ),
                    Gap(12.h),
                    const SelectTimeField(),
                    Gap(18.h),
                    TextOverTextField(
                      text: 'Booking time',
                      padding: 10.w,
                    ),
                    Gap(12.h),
                    const SelectDateField(),
                    Gap(24.h),
                    const AddAddressButton(buttonColor: Constance.kBLueColor),
                    Gap(32.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ShapeDecoration shapeDecoration() {
    return ShapeDecoration(
      color: const Color(0xFFFEFEFE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x1E000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    );
  }
}
