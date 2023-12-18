import 'package:flutter/material.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/choose_gender_widget.dart';

class MaleFemaleToggleWidget extends StatelessWidget {
  const MaleFemaleToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ToggleWidget(
            icon: 'assets/images/male.svg', gender: 'Male'),
        ToggleWidget(
            icon: 'assets/images/female.svg', gender: 'Female'),
      ],
    );
  }
}
