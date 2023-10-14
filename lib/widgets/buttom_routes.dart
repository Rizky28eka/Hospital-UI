import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';
import '../pages/message_page.dart';
import '../pages/schedule_page.dart';
import '../pages/setting_page.dart';

class ButtonRoutes extends StatefulWidget {
  const ButtonRoutes({super.key});

  @override
  State<ButtonRoutes> createState() => ButtonRoutesState();
}

class ButtonRoutesState extends State<ButtonRoutes> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    MessagPage(),
    SchedulePage(),
    SettingPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Color(0xFF1E375D),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
