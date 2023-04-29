import 'package:flutter/material.dart';
import 'package:sabak16_bmi/constants/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.text, required this.icon});

  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 70),
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
