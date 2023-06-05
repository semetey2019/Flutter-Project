import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app.colors.dart';
import 'package:sabak14_quize_app/constants/app.text_styles.dart';
import 'package:sabak14_quize_app/constants/texts.dart';
import 'package:sabak14_quize_app/usefile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void tecsher(bool koldonuu) {
    bool correctAnswer = useQuize.joopAluu();
    setState(
      () {
        if (useQuize.isfinished() == true) {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Тест QuizeApp'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: const <Widget>[
                      Text('Тест аягына чыкты, кайра биринчи суроого баруу'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Жок'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Ооба'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
          useQuize.indexZero();
          iconAluu = [];
        } else {
          if (correctAnswer == koldonuu) {
            iconAluu.add(
              const Icon(
                Icons.check,
                color: Colors.green,
              ),
            );
          } else {
            iconAluu.add(
              const Icon(
                Icons.close,
                color: Colors.red,
              ),
            );
          }
          useQuize.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text("Тапшырма 7", style: AppTextStyles.appBarTextStyle),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Spacer(),  - бош орунду тен болуп текстти ортого коюп берет
              Text(
                useQuize.surooAluu(),
                style: AppTextStyles.appTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 102),
              SizedBox(
                height: 70,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.truBgrColor,
                  ),
                  onPressed: () {
                    tecsher(true);
                  },
                  child:
                      const Text(AppTexts.tuura, style: AppTextStyles.truStyle),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 70,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.falseBgrColor,
                  ),
                  onPressed: () {
                    tecsher(false);
                  },
                  child: const Text(AppTexts.tuuraEmes,
                      style: AppTextStyles.truStyle),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: iconAluu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return iconAluu[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
