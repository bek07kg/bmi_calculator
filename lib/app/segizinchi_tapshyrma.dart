import 'package:flutter/material.dart';
import 'package:tapshyrma08_flutter/view/home_view.dart';

class SegizinchiTapshyrma extends StatelessWidget {
  const SegizinchiTapshyrma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALCULATOR",
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
