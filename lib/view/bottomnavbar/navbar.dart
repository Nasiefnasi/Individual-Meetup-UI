// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ui_task_bangalore_nasief/view/IndividualMeetuppage/meetup_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  // Define your pages here
  final List<Widget> _pages = const [
    MeetUpPage(),
    MeetUpPage(),
    MeetUpPage(),
    MeetUpPage(),
    MeetUpPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: .1, fixedColor: Colors.grey, selectedFontSize: 13,
        unselectedItemColor: Colors.black26,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.grey[800],
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey[800], Icons.widgets_rounded),
            label: 'Project',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey[800], Icons.handshake_outlined),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey[800], Icons.drive_file_move_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey[800], Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
