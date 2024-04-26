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
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 0
                    ? "assets/images/habits.svg"
                    : "assets/images/habits1.svg",
                width: 32,
                height: 32,
              ),
              label: "Habits",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 1
                    ? "assets/images/journal1.svg"
                    : "assets/images/journal.svg",
                width: 32,
                height: 32,
              ),
              label: "Journal",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 2
                    ? "assets/images/practices1.svg"
                    : "assets/images/practices.svg",
                width: 32,
                height: 32,
              ),
              label: "Practices",
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: SvgPicture.asset(
                _currentIndex == 3
                    ? "assets/images/settings1.svg"
                    : "assets/images/settings.svg",
                width: 32,
                height: 32,
              ),
            ),
          ],
        ),
      ),
    );
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
