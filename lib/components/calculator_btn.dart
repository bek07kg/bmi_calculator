import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70.0,
        color: AppColors.red,
        child: Center(
          child: Text(
            AppText.calculator,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 26.0,
            ),
          ),
        ),
      ),
    );
  }
}
