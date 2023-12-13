import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:foodc_app/features/authentication/presentation/screens/widgets/name_text_field.dart';
import 'package:foodc_app/features/profile/presentation/screens/widgets/stack_profile_widget.dart';
import 'package:foodc_app/features/profile/presentation/screens/widgets/text_over_text_field.dart';
import 'package:gap/gap.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const StackProfileWidget(hasBackIcon: true),
          Gap(32.h),
          Padding(
            padding: Constance.paddingHorizontal24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Edit Profile',
                  style: Styles.style20,
                ),
                Gap(24.h),
                const TextOverTextField(text: 'First Name'),
                Gap(8.h),
                NameTextField(controller: TextEditingController()),
                Gap(18.h),
                const TextOverTextField(text: 'Last Name'),
                Gap(8.h),
                NameTextField(controller: TextEditingController()),
                Gap(18.h),
                const TextOverTextField(text: 'Email'),
                Gap(8.h),
                NameTextField(controller: TextEditingController()),
                Gap(18.h),
                const TextOverTextField(text: 'Password'),
                Gap(8.h),
                NameTextField(controller: TextEditingController()),
              ],
            ),
          )
        
        ]),
      ),
    );
  }
}
