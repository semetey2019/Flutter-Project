import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final res = weight / pow(height / 100, 2);
    return res;
  }

  String bmiResult(res) {
    if (res <= 18.5) {
      return 'Сиз арыксыз';
      // print('Сиз арыксыз:$res');
    } else if (res >= 18.6 && res <= 25) {
      return 'Нормалдуу';
      // print('Нормалдуу:$res');
    } else if (res >= 25.1 && res <= 30) {
      return 'Сиз ашыкча салмактуусуз';
      // print('Сиз ашыкча салмактуусуз:$res');
    } else {
      return 'Сиз семизсиз';
      // print('Сиз семизсиз:$res');
    }
  }

  String bmiDescription(res) {
    if (res <= 18.5) {
      return 'Сиз арыксыз, тамактануу норманызды карап коюунуз шарт';
      // print('Сиз арыксыз:$res');
    } else if (res >= 18.6 && res <= 25) {
      return 'Сиздин дене салмагыныз нормалдуу. Азаматсыз!';
      // print('Нормалдуу:$res');
    } else if (res >= 25.1 && res <= 30) {
      return 'Сиз ашыкча салмактуу экенсиз, спорт менен алектениниз!';
      // print('Сиз ашыкча салмактуусуз:$res');
    } else {
      return 'Сиз семизсиз, срочно фитнес клубка барыныз!! Аз жениз!!';
      // print('Сиз семизсиз:$res');
    }
  }
}
