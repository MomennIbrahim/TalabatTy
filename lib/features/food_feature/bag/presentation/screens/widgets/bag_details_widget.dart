import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';


class BagDetailsWidget extends StatelessWidget {
  const BagDetailsWidget({
    super.key,
    required this.text,
    required this.price,
    this.textStyle,
  });

  final String text;
  final String price;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textStyle ?? Styles.styleGrey18,
          ),
          Text(
            price,
            style: Styles.style18,
          )
        ],
      ),
    );
  }
}
