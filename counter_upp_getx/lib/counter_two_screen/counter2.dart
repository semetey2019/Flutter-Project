import 'package:counter_upp_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetxScreen2 extends StatefulWidget {
  const CounterGetxScreen2({super.key});

  @override
  State<CounterGetxScreen2> createState() => _CounterGetxScreen2State();
}

class _CounterGetxScreen2State extends State<CounterGetxScreen2> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("2-page"),
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
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => const CounterGetxScreen2(),
                  ),
                );
              },
              child: const Text("To firstGetx page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.degrement,
        tooltip: 'Degrement',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
