import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui/constants/app_colors.dart';
import 'package:sabak30_capitals_ui/viev/homeViev.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dsts',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        appBarTheme: const AppBarTheme(color: AppColors.appColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeViev(),
    );
  }
}
