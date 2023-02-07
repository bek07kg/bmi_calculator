import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);

  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

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
              "$value",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => remove(value - 1),
                  icon: Icons.remove,
                ),
                SizedBox(width: 10.0),
                FlatButton(
                  onPressed: () => add(value + 1),
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FlatButton extends StatelessWidget {
  const FlatButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btnColor,
      foregroundColor: AppColors.white,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 50.0,
      ),
    );
  }
}
