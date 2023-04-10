import 'package:flutter/material.dart';

import 'secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white, 
    //list's color
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Тапшырма 1",
            style: TextStyle(color: Colors.black), 
            //text's color
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        //контейнердин чекесин 10го азайтуу
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                ),
                ),
                decoration: BoxDecoration(
                    //өң,капталдарын кыркуу
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                //горизонтал тегиздикте баттондорду жайгаштыру жана центрге келтирүү
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          //абалды озгортот
                          index--; //-1
                        });
                      },
                      child: const Icon(Icons.remove)),
                  const SizedBox(
                    width: 10,
                  ),
                        //элветонбаттон биз койгон +-тардын фигурасын курат
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index++; //+1
                        });
                      },
                      child: const Icon(Icons.add,)),       
                ],
              ),
  
              const SizedBox(height: 25,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EkinchiBet(count:index)));
              }, icon: const Icon(Icons.next_plan, size: 50,
              color: Colors.pink,)),
            ],
          ),
        ),
      ),
    );
  }
}