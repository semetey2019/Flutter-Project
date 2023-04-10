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
          title: const Text('Extract Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContainerWidget(
                    conteinerdinTexti: 'container1',
                    conteinerdinTexti2: 'sabak6',
                    icon: Icons.ac_unit_rounded,
                    image: '',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
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
                    conteinerdinTexti: 'conteiner3',
                    conteinerdinTexti2: 'sabak4',
                    icon: Icons.access_time_filled,
                    image: '',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    conteinerdinTexti: 'conteiner4',
                    conteinerdinTexti2: 'sabak3',
                    icon: Icons.access_alarm,
                    image: '',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerWidget(
                    conteinerdinTexti: 'conteiner5',
                    conteinerdinTexti2: 'sabak2',
                    icon: Icons.add_call,
                    image: '',
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
