import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/cubit/weather_cubit.dart';
import 'package:weather_app_with_bloc/services/fetch_weather.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(weatherService)..getByCityName('Bishkek'),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if (state is WeatherInitial) {
                return const Text('WeatherInitial');
              } else if (state is WeatherLoading) {
                return const Text('WeatherLoading');
              } else if (state is WeatherSuccsess) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${state.weatherResponce.weather[0].id}'),
                      Text(state.weatherResponce.weather[0].main),
                      Text(state.weatherResponce.weather[0].description),
                      Text(state.weatherResponce.weather[0].icon),
                      Text(state.weatherResponce.name),
                      Text('${state.weatherResponce.main.feelsLike}'),
                      Text('${state.weatherResponce.main.tempMax}'),
                      Text('${state.weatherResponce.main.tempMin}'),
                    ],
                  ),
                );
              } else if (state is WeatherError) {
                return const Text('WeatherError');
              } else {
                return const Text('tushunuksuz kata');
              }
            },
          ),
        ),
      ),
    );
  }
}
