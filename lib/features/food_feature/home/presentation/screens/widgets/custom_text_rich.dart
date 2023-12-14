import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({super.key, required this.textSpan1, required this.textSpan2, this.textStyle});

  final String textSpan1;
  final String textSpan2;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$textSpan1 ',
            style: Styles.style20,
          ),
          TextSpan(
            text: textSpan2,
            style: textStyle?? Styles.stylePrimaryColor20,
          ),
        ],
      ),
    );
  }
}
