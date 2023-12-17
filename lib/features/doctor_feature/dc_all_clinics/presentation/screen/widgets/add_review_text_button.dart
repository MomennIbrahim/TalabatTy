import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/styles.dart';

class AddReviewTextButton extends StatelessWidget {
  const AddReviewTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constance.paddingHorizontal24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'El Maqam Reviews',
            style: Styles.style16W500,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Add Review',
                style: Styles.styleBlue16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )),
        ],
      ),
    );
  }
}
