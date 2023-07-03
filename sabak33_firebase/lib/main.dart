import 'package:flutter/material.dart';
import 'package:sabak33_firebase/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/*
1. Файрбейсти Флаттердеги проектке туташтырдык
2. Дата база туздук
3. ДатаБазага маалыматтарды жонотуп аны колдонуу максатында 4 негизги 
   функция жаздык: creat, read, update, delete.
  */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
