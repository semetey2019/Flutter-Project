import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak12_piano_app2/components/white_play.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Demoscreen"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //маинаксисэлаймент ылдыйга ортого алып келди. биринчи колумнга центр берип андан сон
          // ортого келтирдик.
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),

                //паддинг контейнерди он жагынан да сол жагынан да аралык калтырдык 10 пиксел
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-do-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-re-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-mi-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-fa-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-sol-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-lya-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource('zvuk-notyi-si-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                WhitePlay(
                  onTap: () {
                    AudioPlayer().play(
                      AssetSource(
                          'zvuk-notyi-do-vo-vtoroy-oktave-rastyanutyiy.mp3'),
                    );
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
