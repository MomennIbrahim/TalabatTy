import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:go_router/go_router.dart';

class IconBackAndMenuRow extends StatelessWidget {
  const IconBackAndMenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Constance.kWhiteColor,
              )),
          const MenuIcon(),
        ],
      ),
    );
  }
}
