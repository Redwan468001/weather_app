import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/additional_info.dart';
import 'package:weather_app/hourly_weather_info.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('Refresh');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300 F',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Icon(
                            Icons.cloud,
                            size: 70,
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Rain',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyWeatherForecast(
                    time: '9:30',
                    icon: Icons.cloud,
                    tempreture: '98 F',
                  ),
                  HourlyWeatherForecast(
                    time: '10:00',
                    icon: Icons.sunny,
                    tempreture: '90 F',
                  ),
                  HourlyWeatherForecast(
                    time: '10:30',
                    icon: Icons.storm_rounded,
                    tempreture: '85 F',
                  ),
                  HourlyWeatherForecast(
                    time: '11:00',
                    icon: Icons.sunny,
                    tempreture: '100 F',
                  ),
                  HourlyWeatherForecast(
                    time: '11:30',
                    icon: Icons.cloudy_snowing,
                    tempreture: '102 F',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Additional Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AdditionalInfo(
                  icon: Icons.water_drop,
                  label: 'Humadity',
                  value: '91',
                ),
                AdditionalInfo(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '45',
                ),
                AdditionalInfo(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '75',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
