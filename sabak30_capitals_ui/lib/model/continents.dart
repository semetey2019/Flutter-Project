import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui/constants/app_colors.dart';

class Continents {
  const Continents(
      {required this.color, required this.name, required this.image});
  final String name;
  final String image;
  final Color color;
}

const Continents asia =
    Continents(name: 'Asia', image: 'asia', color: AppColors.asiaColor);
const Continents africa =
    Continents(name: 'Africa', image: 'africa', color: AppColors.africaColor);
const Continents northAmerica = Continents(
    name: 'North America', image: 'north america', color: AppColors.northColor);
const Continents southAmerica = Continents(
    name: 'South America', image: 'south america', color: AppColors.southColor);
const Continents australia = Continents(
    name: 'Australia', image: 'australia', color: AppColors.ausralColor);
const Continents europe =
    Continents(name: 'Europe', image: 'europe', color: AppColors.europecolor);

List<Continents> continentsList = [
  asia,
  africa,
  northAmerica,
  southAmerica,
  australia,
  europe
];
