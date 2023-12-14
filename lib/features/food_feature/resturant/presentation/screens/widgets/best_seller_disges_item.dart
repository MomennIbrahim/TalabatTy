import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class BestSellerDishesItem extends StatelessWidget {
  const BestSellerDishesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 160.w,
      height: 200.h,
      child: Card(
        color: Constance.kWhiteColor,
        elevation: .5,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r)),
                child: Image(
                  image:
                  const AssetImage('assets/images/hawawshi.png'),
                  width: 160.w,
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0.w.h),
                child: Center(
                    child: Text(
                      'Margherita Pizza',
                      style: Styles.style16,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
