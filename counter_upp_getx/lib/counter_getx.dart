import 'package:counter_upp_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetx extends StatefulWidget {
  const CounterGetx({super.key});

  @override
  State<CounterGetx> createState() => _CounterGetxState();
}

class _CounterGetxState extends State<CounterGetx> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
