import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak16_bmi/constants/app_colors.dart';
import 'package:sabak16_bmi/constants/circularbutton.dart';
import 'package:sabak16_bmi/theme/app_text_style.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardColor,
        child: child,
      ),
    );
  }
}
