import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/doctor_feature/dc_layout/presentation/screen/dc_layout_screen.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/hungry_or_cold_widget.dart';
import 'package:foodc_app/features/food_feature/layout/presentation/screen/layout_screen.dart';
import 'package:go_router/go_router.dart';

class DoctorContainer extends StatelessWidget {
  const DoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).replace(AppRouter.kDcLayoutScreen);
      },
      child: const HungryOrColdWidget(
        title: 'Do you have a cold?',
        subTitle:
        'Don\'t worry, we are here to help you. Book your consultation quickly and easily.',
        image: 'assets/images/Medicine uniform healthcare medical workers day concept.png',
      ),
    );
  }
}
