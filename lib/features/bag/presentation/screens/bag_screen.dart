import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/custom_slide.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/bag_item.dart';
import 'widgets/stack_bag_widget.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomSlideAnimate(
      slide: Constance.up,
      child: SingleChildScrollView(
        child: Column(
          children: [
            StackBagWidget(),
            BagItem(),
          ],
        ),
      ),
    );
  }
}
