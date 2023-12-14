import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodc_app/core/widgets/menu_icon.dart';
import 'package:foodc_app/core/widgets/restaurant_text.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constance.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../home/presentation/screens/widgets/background_image.dart';

class StackRestaurantWidget extends StatelessWidget {
  const StackRestaurantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(height: MediaQuery.of(context).size.height / 2.35),
        Column(
          children: [
            Gap(50.h),
            Padding(
              padding: Constance.paddingHorizontal24,
              child: const MenuIcon(),
            ),
            Gap(37.h),
            const RestaurantText(),
            Gap(29.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: SizedBox(
                height: 50.h,
                child: SearchBar(
                  controller: TextEditingController(),
                  onTap: () {},
                  leading: SvgPicture.asset('assets/images/search.svg',width: 18.w,height: 18.h,),
                  trailing: [
                    SizedBox(width: 100.w,child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0.h),
                      child: CustomButton(text: 'Search', onPressed: (){}, textStyle: Styles.styleWhite16,buttonColor: Constance.kPrimaryColor,),
                    )),
                  ],
                  hintText: 'Find your Restaurant..',
                  hintStyle: MaterialStatePropertyAll(Styles.styleGrey14),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
