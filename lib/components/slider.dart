import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget(
      {super.key,
      required this.height,
      required this.value,
      required this.onChanged});

  final String height;
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.height,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 22.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              height,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                AppText.cm,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: value,
              max: 300,
              activeColor: AppColors.white,
              thumbColor: AppColors.red,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
