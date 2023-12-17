import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/best_doctor_item.dart';
import 'package:gap/gap.dart';

class BestDoctorInTheClinicsListView extends StatelessWidget {
  const BestDoctorInTheClinicsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: ListView.separated(
        padding: Constance.paddingHorizontal24,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> const DoctorCardItem(),
        separatorBuilder: (context,index)=> Gap(24.w),
        itemCount: 5
        ,),
    );
  }
}
