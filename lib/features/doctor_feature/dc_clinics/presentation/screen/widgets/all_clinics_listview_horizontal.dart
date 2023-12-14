import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_clinics/presentation/screen/widgets/all_clinics_item.dart';
import 'package:gap/gap.dart';

class AllClinicsListViewHorizontal extends StatelessWidget {
  const AllClinicsListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: Constance.paddingHorizontal24,
        itemBuilder: (context, index) => const AllClinicsItem(),
        separatorBuilder: (context, index) => Gap(12.w),
        itemCount: 5,
      ),
    );
  }
}
