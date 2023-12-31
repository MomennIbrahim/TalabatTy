import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key, this.height, this.child});

  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?? MediaQuery.of(context).size.height / 4.0,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        image: const DecorationImage(
            image: AssetImage(
                'assets/images/snack-pastry-board-with-potatoes-water-black-background-top-view.png'),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
