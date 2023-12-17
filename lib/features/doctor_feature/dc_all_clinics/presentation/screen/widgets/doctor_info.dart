import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
      ],
    );
  }
}
