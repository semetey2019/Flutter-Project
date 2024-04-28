import 'package:flutter/material.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f4f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafe),
        surfaceTintColor: const Color(0xfffafafe),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text(
          "Daily habits",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.20),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
