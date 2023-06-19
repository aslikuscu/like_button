import 'package:flutter/material.dart';
import 'package:like_button/constants.dart';
import 'package:like_button/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  static List<Widget> pages = [
    HomePage(),
    Container(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/resimler/cal.png',
              height: 24,
              width: 24,
            ),
            label: 'Calendar'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/resimler/home.png',
              height: 24,
              width: 24,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/resimler/profile.png',
              height: 24,
              width: 24,
            ),
            label: 'Profile'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/resimler/setting.png',
              height: 24,
              width: 24,
            ),
            label: 'Setting'),
      ]),
    );
  }
}
