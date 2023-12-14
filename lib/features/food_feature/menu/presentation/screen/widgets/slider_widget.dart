import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/constance.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: Constance.paddingHorizontal24,
        child: Row(
          children: [
            Container(
              height: 17.h,
              width: 39.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ]),
              child: const Text(
                '0.38',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 0,
                  ),
                ),
                child: Slider(
                  value: 25,
                  onChanged: (value) {},
                  allowedInteraction: SliderInteraction.slideOnly,
                  inactiveColor: Colors.grey,
                  max: 100,
                  min: 0,
                  activeColor: const Color(0xFFAA4C5F),
                ),
              ),
            ),
          ],
        ));
  }
}
