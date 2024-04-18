// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nippon_habbits/home/habits.dart';
import 'package:nippon_habbits/home/journal.dart';
import 'package:nippon_habbits/home/practices.dart';
import 'package:nippon_habbits/home/settings.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: _currentIndex,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              _currentIndex = value;
              setState(() {});
            },
            children: const [
              HabitsPage(),
              JournalPage(),
              PracticesPage(),
              SettingsPage(),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _onTabTapped,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                ),
                unselectedItemColor: Colors.black,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  height: 1.6,
                ),
                selectedItemColor: Colors.blue,
                items: [
                  BottomNavigationBarItem(
                    label: "Башкы бет",
                    icon: SvgPicture.asset(
                      "assets/images/habits.svg",
                      width: 22,
                      height: 22,
                      color: _currentIndex == 0 ? Colors.blue : Colors.black,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/images/habits.svg",
                      width: 22,
                      height: 22,
                      color: _currentIndex == 1 ? Colors.blue : Colors.black,
                    ),
                    label: "Суроо_жооп",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/images/habits.svg",
                      width: 22,
                      height: 22,
                      color: _currentIndex == 2 ? Colors.blue : Colors.black,
                    ),
                    label: "Куран",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/images/habits.svg",
                      width: 22,
                      height: 22,
                      color: _currentIndex == 3 ? Colors.blue : Colors.black,
                    ),
                    label: "Зикир",
                  ),
                ])));
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.bounceIn,
    );
  }
}
