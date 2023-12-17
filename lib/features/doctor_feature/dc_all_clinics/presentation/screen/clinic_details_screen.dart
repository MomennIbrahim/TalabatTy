import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/doctor_in_the_clinics_listview.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/custom_text_rich.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/stack_restaurant_details_widget.dart';
import 'package:gap/gap.dart';

class ClinicDetailsScreen extends StatelessWidget {
  const ClinicDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackDetailsWidget(
              image: 'assets/images/Doctor testing patient eyesight.png',
              text: 'clinics',
              isFood: false,
            ),
            Gap(150.h),
            Padding(
            padding: Constance.paddingHorizontal24,
            child: CustomTextRich(
              textSpan1: 'Summary of',
              textSpan2: 'eye clinics',
              textStyle: Styles.styleBlue20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
            Gap(12.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Eye clinics deal with ophthalmology and surgery. This includes the eye, optic nerve, retina, vitreous, lens, iris, cornea, eyelids, and areas surrounding the eye such as the lacrimal system and eyelids. Foodc website provides specialized medical and surgical services in all eye specialties. This is done through a group of university professors and consultants who hold academic degrees and have distinguished experiences.\nNow you can book an appointment at the branch closest to you via the website or through our application',
                style: Styles.style16,
              ),
            ),
            Gap(24.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'The doctors in the clinic',
                style: Styles.style18Weight700,
              ),
            ),
            Gap(18.h),
            const DoctorsInTheClinicsListView(),
            Gap(24.h),
          ],
        ),
      ),
    );
  }
}
