import 'package:flutter/material.dart';
import 'package:instaui/pages/home.dart';
import 'package:instaui/pages/UserAccount.dart';
import 'package:instaui/pages/UserSearch.dart';
import 'package:instaui/pages/Usershop.dart';
import 'package:instaui/pages/Uservideo.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  final List<Widget> _children = [
    Home(),
    userSearch(),
    userVideo(),
    userShop(),
    userAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: _children[selectedIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey[700],
        unselectedItemColor: Colors.grey[400],
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ' '),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
          const BottomNavigationBarItem(
              icon: Icon(Icons.video_call), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.shop), label: ' '),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ' ')
        ],
      ),
    );
  }
}
