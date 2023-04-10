import 'package:flutter/material.dart';
import 'package:sabak_piano_app_ui/components/demo_black.dart';
import 'package:sabak_piano_app_ui/components/demo_white.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 350,
        child: Stack(
          children: [
            ListView.builder(
              //итемкоунт мн 7 би 15 би каалаганча контейнер койсок болот 
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                //ак кнопка учун
                return const DemoWhiteKey();
              },
            ),
            //кара кнопка учун
            Row(
              children: const [
                SizedBox(
                  width: 40,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 12,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 148,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 12,
                ),
                DemoBlackKey(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
