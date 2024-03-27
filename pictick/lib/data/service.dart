// ignore_for_file: avoid_print

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/info_notif.dart';

class LocalDataBase extends StatefulWidget {
  const LocalDataBase({super.key});

  @override
  State<LocalDataBase> createState() => _LocalDataBaseState();

  insertImage(Uint8List imageData) {}
}

class _LocalDataBaseState extends State<LocalDataBase> {
  late Database database;
  final String tableName = 'pictick.db';

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sqflite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () async {
            //     await insertData('Jams', 25);
            //     print('data inserted successfully');
            //   },
            //   child: const Text('InsertData'),
            // ),
            ElevatedButton(
              onPressed: () async {
                LocalDataBase databaseHelper =
                    const LocalDataBase(); // Создание экземпляра DatabaseHelper
                Uint8List imageData = await getImageData(
                    "assets/1.jpg"); // Получение двоичного представления вашей картинки
                await databaseHelper
                    .insertImage(imageData); // Вызов метода insertImage()
                print('Data inserted successfully');
              },
              child: const Text('Insert Image'),
            ),
            ElevatedButton(
              onPressed: () async {
                var data = await fetchData();
                print('FetchData Data: $data');
              },
              child: const Text('FetchData'),
            ),
            ElevatedButton(
              onPressed: () async {
                await updateData(1, 'jane');

                print(' Data update');
              },
              child: const Text('FetchData'),
            ),
            ElevatedButton(
              onPressed: () async {
                await deledData(
                  1,
                );
                print(' Data deleted');
              },
              child: const Text('Data deleted'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> initializeDatabase() async {
    var databasePath = await getDatabasesPath();
    // var pathPath = await getExternalStorageDirectory();

    String path = join(databasePath, 'pictick.db');
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
CREATE IF NOT EXIST TABLE notifinfos(
  id INTEGER PRIMARY KEY,
  name TEXT,
  namePic TEXT,
  date DATETIME,
  status INTEGER)''');
    });
  }

  Future<int> insertData(
      String name, int namePic, DateTime dateTime, int state) async {
    return await database.insert("notifinfos",
        {"name": name, "namePic": namePic, 'date': dateTime, "status": state});
  }

  Future<int> insertData1(InfoNotif infoNotif) async {
    return await database.insert("notifinfos", infoNotif.toJson());
  }

  fetchData() async {
    return await database.query(tableName);
  }

  deledData(int id) async {
    return await database.delete(tableName, where: ' id=?', whereArgs: [id]);
  }

  updateData(int id, String s) async {
    await database.update(tableName, {"name": s},
        where: "id=?", whereArgs: [id]);
  }

//////картинка
  Future<void> insertImage(Uint8List imageData) async {
    await database.insert(tableName, {'imageData': imageData},
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Uint8List?> fetchImage() async {
    final List<Map<String, dynamic>> maps = await database.query(tableName);
    if (maps.isNotEmpty) {
      return maps.first['imageData'];
    }
    return null;
  }

  Future<void> deleteImage() async {
    await database.delete(tableName);
  }

// Метод для получения двоичного представления изображения
  Future<Uint8List> getImageData(String imagePath) async {
    ByteData imageData = await rootBundle.load(imagePath);
    return imageData.buffer.asUint8List();
  }

// Метод для отображения изображения
  Widget displayImage(Uint8List imageData) {
    return Image.memory(imageData);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  Int8List? _bytes;
  _getBytes(imageUrl) async {
    final ByteData data =
        await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl);
    _bytes = data.buffer.asUint8List() as Int8List?;
  }

  @override
  void initState() {
    // refreshOnStart();
    super.initState();
  }

  refreshOnStart() async {
    // await LocalDataBase().readAllData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: () async {
                await _getBytes(
                    'https://i.pinimg.com/564x/65/2f/b7/652fb7452faccf7eda272fa6f7684e62.jpg');
                // await LocalDataBase().insertData();
                setState(() {});
              },
              icon: const Icon(Icons.abc))
        ],
      ),
    );
  }
}











// ignore_for_file: depend_on_referenced_packages

// import 'dart:async';


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'package:timezone/data/latest_all.dart' as tz;

// FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   tz.initializeTimeZones();
//   flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()!
//       .requestNotificationsPermission();

//   runApp(ChangeNotifierProvider(
//     create: (contex) => alarmprovider(),
//     child: const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool value = false;

//   @override
//   void initState() {
//     context.read<alarmprovider>().Inituilize(context);
//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {});
//     });

//     super.initState();
//     context.read<alarmprovider>().GetData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEEEFF5),
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           )
//         ],
//         title: const Text(
//           'Alarm Clock ',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//                 color: Colors.deepPurpleAccent,
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30))),
//             height: MediaQuery.of(context).size.height * 0.1,
//             child: Center(
//                 child: Text(
//               DateFormat.yMEd().add_jms().format(
//                     DateTime.now(),
//                   ),
//               style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                   color: Colors.white),
//             )),
//           ),
//           Consumer<alarmprovider>(builder: (context, alarm, child) {
//             return SizedBox(
//               height: MediaQuery.of(context).size.height * 0.7,
//               child: ListView.builder(
//                   itemCount: alarm.modelist.length,
//                   itemBuilder: (BuildContext, index) {
//                     return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * 0.1,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Text(
//                                           alarm.modelist[index].dateTime!,
//                                           style: const TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 16,
//                                               color: Colors.black),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 8.0),
//                                           // ignore: prefer_interpolation_to_compose_strings
//                                           child: Text("|" +
//                                               alarm.modelist[index].label
//                                                   .toString()),
//                                         ),
//                                       ],
//                                     ),
//                                     CupertinoSwitch(
//                                         value: (alarm.modelist[index]
//                                                     .milliseconds! <
//                                                 DateTime.now()
//                                                     .microsecondsSinceEpoch)
//                                             ? false
//                                             : alarm.modelist[index].check,
//                                         onChanged: (v) {
//                                           alarm.EditSwitch(index, v);

//                                           alarm.CancelNotification(
//                                               alarm.modelist[index].id!);
//                                         }),
//                                   ],
//                                 ),
//                                 Text(alarm.modelist[index].when!)
//                               ],
//                             ),
//                           ),
//                         ));
//                   }),
//             );
//           }),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.1,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30)),
//                 color: Colors.deepPurpleAccent),
//             child: Center(
//                 child: GestureDetector(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const AddAlarm()));
//               },
//               child: Container(
//                   decoration: const BoxDecoration(
//                       color: Colors.white, shape: BoxShape.circle),
//                   child: const Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Icon(Icons.add),
//                   )),
//             )),
//           ),
//         ],
//       ),
//     );
//   }
// }
