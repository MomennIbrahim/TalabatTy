import 'package:flutter/material.dart';
import 'package:foodc_app/core/utlis/styles.dart';


class SendAgainButton extends StatelessWidget {
  const SendAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Didn\'t receive code? ',
                style: Styles.style18,
              ),
              TextSpan(
                text: 'send again',
                style: Styles.style18.copyWith(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
