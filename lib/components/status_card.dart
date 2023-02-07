import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.isFemale,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool isFemale;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: AppColors.cardBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80.0,
                color: isFemale ? AppColors.white : null,
              ),
              Text(
                text,
                style: TextStyle(color: AppColors.textColor, fontSize: 22.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
