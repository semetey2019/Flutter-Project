import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    super.initState();
  }

  triggreNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: "basic_channel",
            title: "Big picture",
            body: "Simple Notificasion ",
            bigPicture: "asset://assets/1.jpg",
            notificationLayout: NotificationLayout.BigPicture));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // YourExistingClass(),
        Center(
          child: ElevatedButton(
              onPressed: triggreNotification, child: const Text("Notifi")),
        ),
      ],
    ));
  }
}
