import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/widgets/background_image.dart';
import 'package:gap/gap.dart';
import 'category_bar.dart';
import 'logo_and_menu_button.dart';
import 'user_name.dart';

class StackHomeWidget extends StatelessWidget {
  const StackHomeWidget({super.key, this.isFood = true});

  final bool isFood;

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
                LogoAndMenuButton(isFood: isFood),
                const UserName(),
                SizedBox(
                  width: 161.w,
                  child: Text(
                    'Enjoy your journey within the app',
                    style: Styles.styleWhite16,
                  ),
                ),
                Gap(35.h),
                Container(
                  width: double.maxFinite,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Padding(
                    padding: Constance.paddingHorizontal10,
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Gap(15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Delevring to:',style: Styles.style12,),
                              Text(
                                'Nacr city, El Manhal Schoolsa',
                                style: Styles.style16,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Gap(15.w),
                        const Icon(Icons.arrow_right_outlined,color: Constance.kGreyColor,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CategoryBar(isFood: isFood),
        ],
      ),
    );
  }
}
