import 'package:flutter/material.dart';
import 'package:weather_app/mystatelessvisit.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStateFullVisit(),
    );
  }
}
