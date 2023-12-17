import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/all_clinics_listview_horizontal.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/best_doctor_in_the_clinics_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/custom_text_rich.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/stack_resturant_widget.dart';
import 'package:gap/gap.dart';

class AllClinicsScreen extends StatelessWidget {
  const AllClinicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StackRestaurantWidget(
            isFood: false,
          ),
          Gap(29.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: CustomTextRich(
              textSpan1: 'All',
              textSpan2: 'Clinics',
              textStyle: Styles.styleBlue20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Gap(16.h),
          const AllClinicsListViewHorizontal(),
          Gap(22.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: Text(
              'The best doctors in the clinic',
              style: Styles.style18.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Gap(18.h),
          const BestDoctorInTheClinicsListViewHorizontal(),
          Gap(32.h),
          Align(
              alignment: Alignment.center,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View more doctors',
                    style: Styles.styleBlue20,
                  ))),
          Gap(24.h),
        ],
      ),
    );
  }
}
