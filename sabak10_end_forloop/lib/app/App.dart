import 'package:flutter/material.dart';
import 'package:sabak10_end_forloop/home/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.green,
        
      ),
      home: const LoginPage(),
      
    );
  }
}