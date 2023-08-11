import 'dart:convert';

import 'package:weather_app_with_bloc/models/main_model.dart';
import 'package:weather_app_with_bloc/models/weather.dart';

class WeatherResponce {
  WeatherResponce({
    required this.name,
    required this.main,
    required this.weather,
  });
  final List<Weather> weather;
  final Main main;
  final String name;

  factory WeatherResponce.fromMap(Map<String, dynamic> map) {
    return WeatherResponce(
      weather:
          List<Weather>.from(map['weather']?.map((x) => Weather.fromMap(x))),
      main: Main.fromMap(map['main']),
      name: map['name'] ?? '',
    );
  }

  factory WeatherResponce.fromJson(String source) =>
      WeatherResponce.fromMap(json.decode(source));
}
