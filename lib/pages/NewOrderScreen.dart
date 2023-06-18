import 'package:flutter/material.dart';
import '../models/bar_chart_model.dart';
import 'RevenueGreaph.dart';

import 'TapbarPage.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    OrdersScreen(),
    ChatsScreen(),
    RevenueScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Revenue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,

        // fixedColor: Colors.black,
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TapBarPage();
  }
}

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Page '),
    );
  }
}

class RevenueScreen extends StatelessWidget {
  List<GraphData> data = [
    GraphData('Category 1', 10),
    GraphData('Category 2', 15),
    GraphData('Category 3', 5),
    GraphData('Category 4', 20),
  ];
  @override
  Widget build(BuildContext context) {
    return Revenuegraph(
      data: data,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile'),
    );
  }
}
