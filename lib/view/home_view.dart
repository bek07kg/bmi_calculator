import 'package:flutter/material.dart';
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
  double _currentSliderValue = 180;

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
                    icon: Icons.male,
                    text: AppText.male,
                  ),
                  SizedBox(width: 10.0),
                  StatusCard(
                    icon: Icons.female,
                    text: AppText.female,
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
                  height: _currentSliderValue.toStringAsFixed(0),
                  value: _currentSliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
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
                    text2: "60",
                  ),
                  SizedBox(width: 10),
                  WeightAge(text: AppText.age, text2: "28"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorBtn(),
    );
  }
}
