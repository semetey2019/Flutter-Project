import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/models/weather_responce.dart';
import 'package:weather_app_with_bloc/services/fetch_weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.service) : super(WeatherInitial());

  final WeatherService service;
  Future<void> getByCityName(String cityName) async {
    emit(WeatherLoading());
    final data = await service.getWeatherByCityName(cityName);
    if (data != null) {
      emit(WeatherSuccsess(data));
    } else {
      emit(WeatherError(errorText: 'bir kata bar'));
    }
  }
}
