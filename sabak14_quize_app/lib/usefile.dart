import 'package:sabak14_quize_app/model.dart';
import 'package:flutter/material.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> suroojoop = [
    QuizeModel(
        suroo: "Пайгамбарыбыз (с.а.в.) 40 жашында уйлонгонбу?", joop: false),
    QuizeModel(
        suroo: "Территориясы боюнча эн чон мамлекет Россиябы?", joop: true),
    QuizeModel(
        suroo: "Apple компаниясы 1 секундада 2000 доллар иштеп табабы?",
        joop: false),
    QuizeModel(suroo: "Википедияны китеп кылып чыгарса болобу?", joop: true),
    QuizeModel(suroo: "Япониянын элдик гулу Айгулбу?", joop: false),
    QuizeModel(suroo: "Жалпысынан Россияда 22 республика барбы?", joop: true),
    QuizeModel(
        suroo: "Дуйнодогу эн кичине мамлекет Кыргызстанбы?", joop: false),
    QuizeModel(suroo: "Мирбек Атабеков ырчыбы?", joop: true),
  ];

  String surooAluu() {
    return suroojoop[index].suroo;
  }

  bool joopAluu() {
    return suroojoop[index].joop;
  }

  void nextQuestion() {
    if (index <= suroojoop.length) {
      index++;
    }
  }

  bool isfinished() {
    if (suroojoop[index] == suroojoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
