import 'package:flutter/material.dart';
import 'package:sabak21_weather_app_ui/constants/app_colors.dart';
import 'package:sabak21_weather_app_ui/constants/app_text_style.dart';

class MyHomeViev extends StatefulWidget {
  const MyHomeViev({super.key});

  @override
  State<MyHomeViev> createState() => _MyHomeVievState();
}

class _MyHomeVievState extends State<MyHomeViev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgc,
        title: const Center(
          child: Text(
            'Тапшырма-9',
            style: AppTextStyle.titleStyle,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/photo.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.near_me, color: AppColors.iconColor),
                  Icon(Icons.location_city, color: AppColors.iconColor),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Text(
                  '8',
                  style: AppTextStyle.sanTextStyle,
                ),
                Image.asset(
                  'assets/image/cloud.png',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "You'll\n need\n and",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Bishkek",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
