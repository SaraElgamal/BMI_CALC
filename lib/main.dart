import 'package:bmi_calc/Result.dart';
import 'package:bmi_calc/bmi.dart';

import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI(),
    );
  }
}
