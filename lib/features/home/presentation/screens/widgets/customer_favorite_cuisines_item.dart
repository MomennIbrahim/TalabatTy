import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class CustomerFavoriteCuisinesItem extends StatelessWidget {
  const CustomerFavoriteCuisinesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.maxFinite,
        height: 130.h,
        child: Card(
          color: Constance.kWhiteColor,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xffDDDDDD)),
              borderRadius: BorderRadius.circular(15.0.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    bottomLeft: Radius.circular(15.r),
                  ),
                  child: Image(
                    image: const AssetImage('assets/images/hawawshi.png'),
                    fit: BoxFit.cover,
                    width: 100.w,
                    height: 130.h,
                  )),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Sausage Hawawshi',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.style16W500,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.favorite,
                            color: Constance.kPrimaryColor,
                          )
                        ],
                      ),
                      Gap(6.h),
                      Expanded(
                        child: Text(
                          'Dough stuffed with Oriental susage , Mozzarella cheese , Roumi cheese and vegetables',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.style12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'EGP 95.00',
                            style: Styles.style16W500
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          const CircleAvatar(
                            backgroundColor: Constance.kWhiteColor,
                            child: Icon(Icons.shopping_bag_outlined),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
