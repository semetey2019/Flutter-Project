import 'package:pictick/data/service.dart';
import 'package:pictick/model/info_notif.dart';

// class TaskController {
//   List<InfoNotif> tasklist = [];

//   Future<int> addTask({InfoNotif? task}) async {
//     return await LocalDataBase.insertData(task);
//   }

//   void getTasks() async {
//     List<Map<String, dynamic>> tasks = await LocalDataBase.query();
//     tasklist = tasks.map((data) => InfoNotif.fromJson(data)).toList();
//   }

//   void delete(InfoNotif task) {
//     LocalDataBase.delete(task);
//     getTasks();
//   }

//   void markTaskCompleted(int id) async {
//     await LocalDataBase.update(id);
//     getTasks();
//   }
// }
