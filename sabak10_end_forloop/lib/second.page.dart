import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sabak10_end_forloop/model.dart';

class Ekinchibet extends StatelessWidget {
  const Ekinchibet({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Student information',
            style: TextStyle(decorationColor: Colors.green),
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://avatars.mds.yandex.net/i?id=b6cbbdb11196467f77d86c53d917ff666710fea5-8978567-images-thumbs&n=13"),
                fit: BoxFit.cover),
          ),
          child: Column(children: [
            Center(
              child: CircleAvatar(
                  radius: 90, backgroundImage: NetworkImage(student.image)),
            ),
            Text(
              student.id.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.name,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.surName,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.email,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.age.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.group.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.address.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.gender.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.phone ?? "pustoi",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
            Text(
              student.marride ?? ":-)",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
            ),
          ]),
        ),
      ),
    );
  }
}
