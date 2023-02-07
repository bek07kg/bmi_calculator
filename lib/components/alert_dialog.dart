import 'package:flutter/material.dart';
import 'package:tapshyrma08_flutter/constants/app_colors.dart';
import 'package:tapshyrma08_flutter/constants/app_styles.dart';
import 'package:tapshyrma08_flutter/constants/app_text.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.bgColor,
          title: Text(
            AppText.appBarTitle,
            style: AppTextStyles.textGreyF22,
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  text,
                  style: AppTextStyles.textWhiteF18,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Кайра эсепте!"),
            ),
          ],
        );
      });
}
