import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/styles.dart';
import 'package:gap/gap.dart';

class DetectionLocationWidget extends StatelessWidget {
  const DetectionLocationWidget(
      {super.key,
      required this.checkIcon,
      required this.icon,
      required this.text,
       this.iconColor,
       this.textStyle,
      });

  final IconData checkIcon;
  final IconData icon;
  final String text;
  final Color? iconColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(checkIcon,color: iconColor?? Colors.black,)),
        Icon(icon,color: iconColor?? Colors.black,),
        Gap(5.w),
        Text(
          'In Clinic',
          style: textStyle?? Styles.style14,
        ),
      ],
    );
  }
}
