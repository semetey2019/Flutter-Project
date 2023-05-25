import 'dart:io';

void main() {
  resultTasks();
}

void resultTasks() async {
  String stringtask1 = await task1();
  task2();
  task3(stringtask1);
}

Future<String> task1() async {
  Duration threeSeconds = Duration(seconds: 3);
  String? result;
  await Future.delayed(threeSeconds, () {
    result = "task 1 data";
    print("Task1 чыкты");
  });
  return result.toString();
}

void task2() {
  print("Task2 чыкты");
}

void task3(String task1String) {
  print("Task3 чыкты: $task1String");
}
