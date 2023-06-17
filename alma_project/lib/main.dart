import 'package:alma_project/pages/CartPage.dart';
import 'package:alma_project/pages/OrderPage.dart';
import 'package:alma_project/pages/home_page.dart';
import 'package:alma_project/widgets/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //var SistemUiMode;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "itemPage": (context) => const ItemPage(),
        "cartPage": (context) => const CartPage(),
        "orderPage": (context) => const OrderPage(),
      },
    );
  }
}
