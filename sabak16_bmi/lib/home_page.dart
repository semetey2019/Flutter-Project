import 'package:flutter/material.dart';
import 'package:sabak16_bmi/constants/Height.dart';
import 'package:sabak16_bmi/constants/app_colors.dart';
import 'package:sabak16_bmi/constants/app_texts.dart';
import 'package:sabak16_bmi/constants/calculateButton.dart';
import 'package:sabak16_bmi/constants/male_female.dart';
import 'package:sabak16_bmi/constants/weight_age.dart';

import 'constants/status_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  // int currentindex = 0;
  // @override
  // int slader = 1;
  // int card2 = 1;
  // void change() {
  //   setState(() {
  //     slader = currentindex++;
  //     card2 = currentindex++;
  //   });
  //   if (slader.toInt() == true) {
  //     showDialog<void>(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: const Text('Jyiyntyk'),
  //           content: SingleChildScrollView(
  //             child: ListBody(
  //               children: const <Widget>[
  //                 Text('norma'),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               child: const Text('Жок'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //             TextButton(
  //               child: const Text('Ооба'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgrColor,
        title: const Center(
          child: Text(AppTexts.bmi),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                        });
                        print('birinchi');
                      },
                      child: Malefemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                        });
                        print('ekinchi');
                      },
                      child: Malefemale(
                        icon: Icons.female,
                        text: AppTexts.famele,
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const StatusCard(
              child: Height(text: AppTexts.height, text1: "180", text2: "cm"),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    child: WeightAge(text: AppTexts.weight, san: "60"),
                  ),
                  SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(text: AppTexts.age, san: "28"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
