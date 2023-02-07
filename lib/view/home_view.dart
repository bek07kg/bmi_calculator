import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tapshyrma08_flutter/components/alert_dialog.dart';
import 'package:tapshyrma08_flutter/components/slider.dart';
import 'package:tapshyrma08_flutter/constants/app_colors.dart';
import 'package:tapshyrma08_flutter/constants/app_text.dart';

import '../components/calculator_btn.dart';
import '../components/status_card.dart';
import '../components/weight_age.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  bool isfemalehome = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        centerTitle: true,
        title: Text(AppText.appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemalehome = false;
                      });
                    },
                    icon: Icons.male,
                    text: AppText.male,
                    isFemale: !isfemalehome,
                  ),
                  SizedBox(width: 10.0),
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemalehome = true;
                      });
                    },
                    icon: Icons.female,
                    text: AppText.female,
                    isFemale: isfemalehome,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: AppColors.cardBgColor,
                child: SliderWidget(
                  height: height.toStringAsFixed(0),
                  value: height,
                  onChanged: (double value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  WeightAge(
                    text: AppText.weight,
                    value: weight,
                    remove: (svalue) {
                      setState(() {});
                      weight = svalue;
                    },
                    add: (svalue) {
                      setState(() {});
                      weight = svalue;
                    },
                  ),
                  SizedBox(width: 10),
                  WeightAge(
                    text: AppText.age,
                    value: age,
                    remove: (svalue) {
                      setState(() {});
                      age = svalue;
                    },
                    add: (svalue) {
                      setState(() {});
                      age = svalue;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            showMyDialog(
                context: context, text: "Сенин салмагын аз экен. Кобуроок же");
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
              context: context,
              text: 'Сенин салмагын жакшы. Молодец.',
            );
          } else if (result > 24.9) {
            showMyDialog(
              context: context,
              text:
                  'Сенде ашыкча салмак коп. Озуно жакшы кара. Спорт менен алектен',
            );
          } else {
            showMyDialog(
              context: context,
              text: 'Маалымат алууда катачылыктар бар',
            );
          }
        },
      ),
    );
  }
}
