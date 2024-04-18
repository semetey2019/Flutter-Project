import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../constants/route/router.gr.dart';

@RoutePage()
class Splash2Page extends StatefulWidget {
  const Splash2Page({super.key});

  @override
  State<Splash2Page> createState() => _Splash2PageState();
}

class _Splash2PageState extends State<Splash2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 46),
            Expanded(
              flex: 5,
              child: Image.asset("assets/images/pics2.png", fit: BoxFit.fill),
            ),
            const SizedBox(height: 25),
            Expanded(
              flex: 3,
              child: FittedBox(
                fit: BoxFit.none,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 32,
                      height: 1.3,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Track your results\nand learn more\n about "),
                      TextSpan(
                        text: 'Japan',
                        style: TextStyle(color: Color(0xffF63333)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 46),
              child: InkWell(
                onTap: () => context.router.push(
                  const MainRoute(),
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xffF63333),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const SizedBox(
                    height: 72,
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 28),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
