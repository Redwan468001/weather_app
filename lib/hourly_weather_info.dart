import 'package:flutter/material.dart';

//Hourly Weather Forecast
class HourlyWeatherForecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String tempreture;
  const HourlyWeatherForecast({
    super.key,
    required this.time,
    required this.icon,
    required this.tempreture,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Icon(icon),
              const SizedBox(height: 10),
              Text(tempreture),
            ],
          ),
        ),
      ),
    );
  }
}
