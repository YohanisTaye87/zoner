import 'package:flutter/material.dart';

import '../Screens/infoPage.dart';
import '../pages/customerPages/Profile.dart';
import '../screens/map_screen.dart';
import '../screens/message_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Map<String, Object>> _pages;
  int _selectedIndex = 1;
  @override
  void didChangeDependencies() {
    _pages = [
      {
        'page': const InfoPage(),
      },
      {
        'page': MapScreen(),
      },
      {'page': const MessageScreen()},
      {'page': MapScreen()},
      {'page': ProfilePage()},
    ];

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // index == 3 ? _showToast(index) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFAB631),
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: 'info',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_rounded,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        onTap: _selectPage,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
      ),
    );
  }
}
