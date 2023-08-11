part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherSuccsess extends WeatherState {
  WeatherSuccsess(this.weatherResponce);
  final WeatherResponce weatherResponce;
}

final class WeatherError extends WeatherState {
  WeatherError({required this.errorText});
  final String errorText;
}
