import 'package:flutter/material.dart';
import 'package:sabak_piano_app_ui/demo/demo_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const DemoScreen (),
    );
  }
}