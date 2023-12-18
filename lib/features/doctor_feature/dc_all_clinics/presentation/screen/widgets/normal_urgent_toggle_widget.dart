import 'package:flutter/material.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/widgets/choose_gender_widget.dart';

class NormalUrgentToggleWidget extends StatelessWidget {
  const NormalUrgentToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ToggleWidget(
            icon: '', gender: 'Normal'),
        ToggleWidget(
            icon: '', gender: 'Urgent'),
      ],
    );
  }
}
