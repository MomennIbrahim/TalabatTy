import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/styles.dart';
import '../../../../../core/widgets/search_field.dart';
import 'background_image.dart';
import 'category_bar.dart';
import 'logo_and_menu_button.dart';
import 'user_name.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const BackGroundImage(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50.h),
                const LogoAndMenuButton(),
                const UserName(),
                SizedBox(
                  width: 161.w,
                  child: Text(
                    'Enjoy your journey within the app',
                    style: Styles.styleWhite16,
                  ),
                ),
                Gap(35.h),
                const SearchField(),
              ],
            ),
          ),
          const CategoryBar(),
        ],
      ),
    );
  }
}
