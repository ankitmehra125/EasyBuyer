import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/profile.dart';
import 'package:easybuyer/screens/home/shopping.dart';
import 'package:flutter/material.dart';

class BotNav extends StatefulWidget {
  BotNav({super.key});

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Shopping(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xffa67c00),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/BottomNav_images/home.png",
              width: mQuery.size.width * 0.055,
              color: selectedIndex == 0 ? Color(0xffa67c00) : Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/BottomNav_images/shopping.png",
              width: mQuery.size.width * 0.06,
              color: selectedIndex == 1 ? Color(0xffa67c00) : Colors.black,
            ),
            label: "Shopping",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/BottomNav_images/profile.png",
              width: mQuery.size.width * 0.06,
              color: selectedIndex == 2 ? Color(0xffa67c00) : Colors.black,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}



