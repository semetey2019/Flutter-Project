import 'package:flutter/material.dart';

import 'package:sabak30_capitals_ui/constants/app_text_style.dart';
import 'package:sabak30_capitals_ui/model/suroo_joop.dart';

class TestViev extends StatefulWidget {
  const TestViev({super.key, required this.suroo});
  final List<Suroo> suroo;

  @override
  State<TestViev> createState() => _TestVievState();
}

class _TestVievState extends State<TestViev> {
  int indexText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, actions: [
        Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '0',
                style: AppTextStyle.num1Style,
              ),
              Text(
                '32',
                style: AppTextStyle.num2Style,
              ),
              Text('0', style: AppTextStyle.num3Style),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        const Text(
          '3',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 45,
        ),
        const Icon(Icons.favorite, color: Colors.red),
        const Icon(Icons.favorite, color: Colors.red),
        const Icon(Icons.favorite, color: Colors.red),
        const Icon(Icons.more_vert),
      ]),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.black,
            value: 180,
            onChanged: (v) {},
            min: 0,
            max: 200,
          ),
          Text(
            widget.suroo[indexText].text,
            style: AppTextStyle.capitalsstyle,
          ),
          Image.asset(
            'assets/capitals/${widget.suroo[indexText].image}.jpg',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
