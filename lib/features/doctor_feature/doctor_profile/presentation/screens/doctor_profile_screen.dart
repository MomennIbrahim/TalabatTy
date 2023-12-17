import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/core/widgets/custom_button.dart';
import 'package:foodc_app/core/widgets/icon_back_and_menu_row.dart';
import 'package:foodc_app/core/widgets/restaurant_text.dart';
import 'package:foodc_app/features/doctor_feature/doctor_profile/presentation/screens/widgets/clinics_review_listview_horizontal.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/widgets/restaurant_review_item.dart';
import 'package:gap/gap.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                BackGroundImage(
                    height: MediaQuery.of(context).size.height / 2.7,
                    child: Column(
                      children: [
                        Gap(40.h),
                        const IconBackAndMenuRow(isFood: false),
                        Gap(23.h),
                        CustomText(
                          text: 'clinics'.toUpperCase(),
                        ),
                        Gap(8.h),
                      ],
                    )),
                Positioned(
                  bottom: -80.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Constance.kWhiteColor,
                        radius: 82.5.r,
                      ),
                      CircleAvatar(
                          radius: 80.r,
                          backgroundImage: const AssetImage(
                            'assets/images/Ellipse 36.png',
                          )),
                    ],
                  ),
                )
              ],
            ),
            Gap(90.h),
            const Align(alignment: Alignment.center, child: CustomRatingWidget()),
            Gap(8.h),
            Text(
              'Dr. Ramy Shokry',
              textAlign: TextAlign.center,
              style: Styles.style18,
            ),
            Text(
              'General ophthalmologist',
              textAlign: TextAlign.center,
              style: Styles.styleGrey18,
            ),
            Gap(8.h),
            Text(
              'Sut,Sun,Mon   10:30 AM-3:30',
              textAlign: TextAlign.center,
              style: Styles.styleGrey16,
            ),
            Gap(8.h),
            Text(
              'Detection per: 20min',
              textAlign: TextAlign.center,
              style: Styles.styleGrey16,
            ),
            Gap(8.h),
            Text(
              'fees: 200 L.E ( Clinic)',
              textAlign: TextAlign.center,
              style: Styles.styleGrey16.copyWith(fontWeight: FontWeight.w700),
            ),
            Gap(24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.0.w),
              child: const Divider(),
            ),
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
            Padding(
              padding: Constance.paddingHorizontal24,
              child: CustomButton(text: 'Reservation now', onPressed: (){}, textStyle: Styles.styleWhite20,buttonColor: Constance.kBLueColor,),
            ),
            Gap(24.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'El Maqam Reviews',
                    style: Styles.style16W500,
                  ),
                  TextButton(onPressed: (){}, child: Text('Add Review',style: Styles.styleBlue16.copyWith(fontWeight: FontWeight.w600),)),
                ],
              ),
            ),
            const ClinicsReviewListViewHorizontal(),
            Gap(24.h),
          ],
        ),
      ),
    );
  }
}
