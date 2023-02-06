import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.text2,
  }) : super(key: key);

  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 22.0,
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: AppColors.btnColor,
                  foregroundColor: AppColors.white,
                  onPressed: () {},
                  child: Icon(Icons.remove, size: 50.0),
                ),
                SizedBox(width: 10.0),
                FloatingActionButton(
                  backgroundColor: AppColors.btnColor,
                  foregroundColor: AppColors.white,
                  onPressed: () {},
                  child: Icon(Icons.add, size: 50.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
