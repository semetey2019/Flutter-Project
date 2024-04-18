import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nippon_habbits/constants/route/router.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
              child: Image.asset("assets/images/pics.png", fit: BoxFit.fill),
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
                      TextSpan(text: "Immerse in the\nworld of traditional\n"),
                      TextSpan(
                        text: 'Japanese habits',
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
                  const Splash2Route(),
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
                        "Next",
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
