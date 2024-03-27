import 'package:counter_upp_getx/counter_two_screen/counter2.dart';
import 'package:counter_upp_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetxScreen1 extends StatefulWidget {
  const CounterGetxScreen1({super.key});

  @override
  State<CounterGetxScreen1> createState() => _CounterGetxScreen1State();
}

class _CounterGetxScreen1State extends State<CounterGetxScreen1> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Obx(
          () => Text("${controller.count}",
              style: Theme.of(context).textTheme.headlineMedium),
        ),
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
                Navigator.pushNamed(context, 'counterGetxScreen2');
              },
              child: const Text("To secondGetx page"),
            ),
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
