import 'package:flutter/material.dart';

class HomeViev extends StatefulWidget {
  const HomeViev({super.key});

  @override
  State<HomeViev> createState() => _HomeVievState();
}

class _HomeVievState extends State<HomeViev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeViev'),
      ),
    );
  }
}
