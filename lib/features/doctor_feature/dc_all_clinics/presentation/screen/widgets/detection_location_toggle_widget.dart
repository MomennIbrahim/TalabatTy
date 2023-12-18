import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/choose_gender_widget.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/detection_location_widget.dart';

class DetectionLocationToggleWidget extends StatelessWidget {
  const DetectionLocationToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetectionLocationWidget(
          checkIcon: Icons.check_circle_outline,
          icon: Icons.home_outlined,
          text: 'Home consultation',
          textStyle:
          Styles.style14.copyWith(color: Constance.kBLueColor),
          iconColor: Constance.kBLueColor,
        ),
        const DetectionLocationWidget(
          checkIcon: Icons.circle_outlined,
          icon: Icons.medical_services_outlined,
          text: 'In Clinic',
        ),
      ],
    );
  }
}
