import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/add_review_text_button.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/clinics_review_listview_horizontal.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/doctor_info.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/reservation_now_button.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/stack_doctor_profile_widget.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:gap/gap.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackDoctorProfileWidget(),
            Gap(90.h),
            const Align(
                alignment: Alignment.center, child: CustomRatingWidget()),
            Gap(8.h),
            const DoctorInfo(),
            Gap(24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.0.w),
              child: const Divider(),
            ),
            Gap(24.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Clinic address',
                style: Styles.styleBlack24,
              ),
            ),
            Gap(17.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/Frame.svg'),
                  Gap(16.w),
                  Expanded(
                    child: Text(
                      'Alexandria, Smouha, Smouha Circle, Zohour Bargout Building, fourth 4, Apartment 2',
                      style: Styles.style14,
                    ),
                  )
                ],
              ),
            ),
            Gap(24.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Overview Specialty Dr',
                style: Styles.styleBlack24,
              ),
            ),
            Gap(12.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Text(
                'Dr. Rami Shokry, Consultant and Lecturer of Ophthalmology at Kasr Al-Aini Faculty of Medicine - Cairo University. He specializes in vision rehabilitation, vitreoretinal surgery, LASIK, refractive surgery, cataracts, and pediatric ophthalmology. He obtained a doctorate degree in ophthalmology from Cairo University, a master’s degree in ophthalmology from Cairo University, and a fellowship from the Royal College of Surgeons in ophthalmology in the United Kingdom. You can book with Dr. Rami Shukri through the Foodc website',
                style: Styles.style16,
              ),
            ),
            Gap(24.h),
            const ReservationNowButton(),
            Gap(24.h),
            const AddReviewTextButton(),
            const ClinicsReviewListViewHorizontal(),
            Gap(24.h),
          ],
        ),
      ),
    );
  }
}
