import 'package:flutter/material.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/bag_item.dart';
import 'package:foodc_app/features/bag/presentation/screens/widgets/bag_without_item.dart';
import 'widgets/stack_bag_widget.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          StackBagWidget(),
          BagItem(),
        ],
      ),
    );
  }
}
