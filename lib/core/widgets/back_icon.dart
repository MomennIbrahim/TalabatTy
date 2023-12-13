import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:go_router/go_router.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: Constance.paddingHorizontal26,
      child: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Constance.kWhiteColor,
          )),
    );
  }
}
