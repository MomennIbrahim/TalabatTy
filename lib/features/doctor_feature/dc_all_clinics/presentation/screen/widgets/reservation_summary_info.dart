import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class ReservationSummaryInfo extends StatelessWidget {
  const ReservationSummaryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.',isGrey: true),
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.'),
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.',isGrey: true),
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.'),
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.',isGrey: true),
        infoItem(text: 'Dr. Name',text2: 'Specialty Dr.',),
      ],
    );
  }
  Widget infoItem({required String text,required String text2,bool isGrey = false}){
    return Container(
      width: double.infinity,
      height: 32.h,
      decoration: BoxDecoration(color: !isGrey? Constance.kWhiteColor:Colors.grey.shade200),
      child: Padding(
        padding: EdgeInsets.only(left: 26.w,right: 90.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: Constance.paddingHorizontal14,
              child: Text(
                'Dr. Name',
                style: Styles.style18,
              ),
            ),
            Padding(
              padding: Constance.paddingHorizontal14,
              child: Text(
                text2,
                style: Styles.style18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
