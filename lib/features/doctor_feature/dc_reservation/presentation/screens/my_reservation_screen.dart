import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_reservation/presentation/screens/widgets/my_reservation_info.dart';
import 'package:foodc_app/features/doctor_feature/dc_reservation/presentation/screens/widgets/view_dr_details_button.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/widgets/custom_background.dart';
import 'package:gap/gap.dart';

class MyReservationScreen extends StatelessWidget {
  const MyReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBackGround(text: 'my reservation',),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.h),
              child: SizedBox(
                height: 360.h,
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
                          color: Constance.kBLueColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.r),
                              topLeft: Radius.circular(12.r)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0.w.h),
                          child: Text(
                            'My Reservations',
                            style: Styles.style18
                                .copyWith(color: Constance.kWhiteColor),
                          ),
                        ),
                      ),
                      Gap(14.h),
                      Padding(
                        padding: Constance.paddingHorizontal14,
                        child: Text(
                          'Eye Clinic',
                          style: Styles.style20
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.w, right: 30.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Dr. Ramy Shokry',
                                  style: Styles.style18,
                                )),
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: const Color(0xffffff3a44),
                              child:
                              SvgPicture.asset('assets/images/plus-02.svg'),
                            ),
                          ],
                        ),
                      ),
                      Gap(17.h),
                      const MyReservationInfo(),
                      Gap(31.h),
                      const ViewDoctorDetailsButton(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
