import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class ReservationTextBar extends StatelessWidget {
  const ReservationTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      color: const Color(0xFF2E7ABB),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: Constance.paddingHorizontal24,
            child: Text(
              'Reservation',
              style: Styles.styleWhite18,
            ),
          )),
    );
  }
}
