import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class ReservationSummaryHeaderText extends StatelessWidget {
  const ReservationSummaryHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42.h,
      decoration: const BoxDecoration(color: Color(0xFF1F1F1F)),
      child: Padding(
        padding: Constance.paddingHorizontal26,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Reservation Summary',
            style: Styles.style24.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
