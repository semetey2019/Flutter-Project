import 'package:flutter/material.dart';

class Malefemale extends StatelessWidget {
  const Malefemale(
      {super.key,
      required this.icon,
      required this.text,
      required this.isTrue});

  final IconData? icon;
  final String text;
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: isTrue ? Colors.blue : null, size: 80),
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
