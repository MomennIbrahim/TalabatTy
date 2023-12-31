import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        title: Text('My account',style: Styles.styleWhite20.copyWith(fontWeight: FontWeight.w900),),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        leading: Container(),
        centerTitle: true,
        backgroundColor: Constance.kPrimaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0.h.w),
        child: Column(
          children: [
           buildPersonalRow('Personal details', 'First name, last name, mobile number', Icons.person_outline),
           customDivider(),
           buildPersonalRow('Delivery address', 'Add , edit, and delete addresses', Icons.location_on_outlined),
            customDivider(),
            buildPersonalRow('Payment details', 'First name, last name, mobile number', Icons.payment),
            customDivider(),
            buildPersonalRow('My InstaPoints', 'First name, last name, mobile number', Icons.money_sharp),
            customDivider(),
            buildPersonalRow('My reviews', 'All the review you have mode', Icons.star),
            customDivider(),
            buildPersonalRow('Settings', 'Language, search and nearby', Icons.settings),
          ],
        ),
      ),
    );
  }

  customDivider(){
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(),
    );
  }
  buildPersonalRow(String text , String subText,IconData icon){
    return Row(
      children: [
         Icon(icon),
        Gap(15.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text),
              Text(subText,style: Styles.style12,),
            ],
          ),
        ),
        Gap(15.w),
        const Icon(Icons.arrow_right_outlined,color: Constance.kGreyColor,)
      ],
    );
  }
}
