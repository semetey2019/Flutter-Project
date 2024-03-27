import 'dart:io';

import 'package:pictick/data/service.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

AwesomeNotifications awesomeNotifications = AwesomeNotifications();
void main() async {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(const MyApp());
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: "basic_channel",
          channelName: 'BasicNotification',
          channelDescription: "Notification channel for basic tests",
          importance: NotificationImportance.Max,
        ),
      ],
      debug: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LocalDataBase(),
    );
  }
}



// 


