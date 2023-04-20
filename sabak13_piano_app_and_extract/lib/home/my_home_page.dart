import 'package:flutter/material.dart';
import 'package:sabak13_piano_app_and_extract/companents/Container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: const Center(child: Text('Extract Widget')),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContainerWidget(
                    colordunAty: Colors.green,
                    conteinerdinTexti: 'container1',
                    conteinerdinTexti2: 'sabak6',
                    icon: Icons.ac_unit_rounded,
                    image:
                        'https://avatars.mds.yandex.net/i?id=44fe5d0763a13b1ce00596262b86fcbb0438ded1-9182174-images-thumbs&n=13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    colordunAty: Colors.yellow,
                    conteinerdinTexti: 'conteiner2',
                    conteinerdinTexti2: 'sabak5',
                    icon: Icons.add_box,
                    image:
                        'https://avatars.mds.yandex.net/i?id=36fc9c60562497f8c7dc2c5484367cb2026a1086-9214225-images-thumbs&n=13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    colordunAty: Colors.purple,
                    conteinerdinTexti: 'conteiner3',
                    conteinerdinTexti2: 'sabak4',
                    icon: Icons.access_time_filled,
                    image:
                        'https://avatars.mds.yandex.net/i?id=cd050444ff495d6ceb199245e4c79742a6aecd53-9225226-images-thumbs&n=13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    colordunAty: Colors.red,
                    conteinerdinTexti: 'conteiner4',
                    conteinerdinTexti2: 'sabak3',
                    icon: Icons.access_alarm,
                    image:
                        'https://avatars.mds.yandex.net/i?id=94b901a43b0063e18aa09a0d897507be8854247e-4546582-images-thumbs&n=13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    colordunAty: Colors.lightGreen,
                    conteinerdinTexti: 'conteiner5',
                    conteinerdinTexti2: 'sabak2',
                    icon: Icons.add_call,
                    image:
                        'https://avatars.mds.yandex.net/i?id=e0fe2e00e3826a3b472918caf9ef7b91-5342977-images-thumbs&n=13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
