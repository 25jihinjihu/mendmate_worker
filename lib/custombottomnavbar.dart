import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mendmate_worker/Home_Screen.dart';
import 'package:mendmate_worker/Notification_Screen.dart';
import 'package:mendmate_worker/bookingscreen.dart';
import 'package:mendmate_worker/profilescreen.dart';

class Custombottomnavbar extends StatefulWidget {
  const Custombottomnavbar({super.key});

  @override
  State<Custombottomnavbar> createState() => _CustomBottomNavBArState();
}

class _CustomBottomNavBArState extends State<Custombottomnavbar> {
  int _selectedIndex = 0; // Track selected index

  // Screens for each tab
  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    Bookingscreen(),
    NotificationScreen(),
    Profilescreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff7879CA),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedIconTheme: IconThemeData(),
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xffF6F7F9),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SvgPicture.asset(
                'assets/house-chimney (1).svg',
                width: 20,
                height: 20,
                color:
                    _selectedIndex == 0 ? Color(0xff3D56A2) : Color(0xff6C757D),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Transform.rotate(
                angle: -pi / 2,
                child: SvgPicture.asset(
                  'assets/ticket.svg',
                  width: 20,
                  height: 20,
                  color: _selectedIndex == 1
                      ? Color(0xff3D56A2)
                      : Color(0xff6C757D),
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SvgPicture.asset(
                'assets/bell-notification-social-media.svg',
                width: 20,
                height: 20,
                color:
                    _selectedIndex == 2 ? Color(0xff3D56A2) : Color(0xff6C757D),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SvgPicture.asset(
                'assets/user.svg',
                width: 20,
                height: 20,
                color:
                    _selectedIndex == 3 ? Color(0xff3D56A2) : Color(0xff6C757D),
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
