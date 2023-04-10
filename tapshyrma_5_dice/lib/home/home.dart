import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceApp> {
  int firstDice = 1;
  int secondDice = 1;
  void change() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });

    print(firstDice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Tapshyrma 5',
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (firstDice == 5)
              Container(
                color: Colors.lightBlue,
                width: 180,
                height: 30,
                child: const Center(
                  child: Text(
                    "5 демек ЖЕНИШ!!!",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            if (secondDice == 2)
              Container(
                color: Colors.purple,
                width: 180,
                height: 30,
                child: const Center(
                  child: Text(
                    "2 демек УТУЛУШ (((:",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                // InkWell-
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        //$firstDice-алмаштырат
                        child: Image.asset(
                          'images/dice$firstDice-png.png',
                          width: 220,
                          height: 220,
                        ))),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: InkWell(
                        // ontap-мн кнопкабыз басканга болот(кубик)
                        onTap: () {
                          change();
                        },
                        child: Image.asset(
                          'images/dice$secondDice-png.png',
                          height: 220,
                          width: 220,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
