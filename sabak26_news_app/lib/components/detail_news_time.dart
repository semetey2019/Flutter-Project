import 'package:flutter/material.dart';

class DetilNewsTime extends StatelessWidget {
  const DetilNewsTime({super.key, required this.newsTime});

  final String newsTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time),
        const SizedBox(width: 10),
        Text(newsTime)
      ],
    );
  }
}
