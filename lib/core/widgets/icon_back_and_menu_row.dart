import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:go_router/go_router.dart';

class IconBackAndMenuRow extends StatelessWidget {
  const IconBackAndMenuRow({super.key, this.onPressed});

  final Function? onPressed;


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
