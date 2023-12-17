import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/doctor_info.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/stack_doctor_profile_widget.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/widgets/name_text_field.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:gap/gap.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StackDoctorProfileWidget(),
            Gap(100.h),
            const CustomRatingWidget(),
            Gap(8.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
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
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.h,
                      color: const Color(0xFF2E7ABB),child: Align(alignment: Alignment.centerLeft,child: Padding(
                        padding: Constance.paddingHorizontal24,
                        child: Text('Reservation',style: Styles.styleWhite18,),
                      )),),
                    Gap(18.h),
                    Padding(
                      padding: Constance.paddingHorizontal24,
                      child: Text('First Name',style: Styles.styleGrey18,),
                    ),
                    Gap(12.h),
                    Padding(
                      padding: Constance.paddingHorizontal24,
                      child: NameTextField(controller: TextEditingController()),
                    ),
                    Gap(24.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
}
}
