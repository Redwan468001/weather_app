import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String tem;
  const HourlyWeatherForecast({
    super.key,
    required this.time,
    required this.icon,
    required this.tem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Icon(
                icon,
                size: 32,
              ),
              const SizedBox(height: 12),
              Text('$tem° C'),
            ],
          ),
        ),
      ),
    );
  }
}
