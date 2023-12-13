import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FavoriteBackGround extends StatelessWidget {
  const FavoriteBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundImage(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(50.h),
          Padding(
            padding: Constance.paddingHorizontal26,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Constance.kWhiteColor,
                )),
          ),
          Gap(33.h),
          Align(
              alignment: Alignment.center,
              child: Text(
                'My Favorite',
                style: Styles.styleCabinSketch24,
              ))
        ],
      ),
    );
  }
}
