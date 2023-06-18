import 'package:flutter/material.dart';

import '../Widget/IdentityOfPersonAndAvatar.dart';
import '../Widget/button.dart';
import '../models/bar_chart_model.dart';
import 'NewOrderScreen.dart';
import 'RevenueGreaph.dart';
import 'TapbarPage.dart';

class OrderViewPage extends StatefulWidget {
  const OrderViewPage({super.key});

  @override
  State<OrderViewPage> createState() => _OrderViewPageState();
}

class _OrderViewPageState extends State<OrderViewPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    OrdersScreen(),
    ChatsScreen(),
    RevenueScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    List<Map> ProductOrders = [
      {
        "name": "Black & Decker Blender",
        "color": "Black",
        "number": 1,
      },
      {
        "name": "Von Air Fryer",
        "color": "Space Grey",
        "number": 1,
      },
      {
        "name": "Non-stick pan ",
        "color": "Maroon",
        "number": 1,
      },
      {
        "name": "Non-stick pan ",
        "color": "Maroon",
        "number": 1,
      },
      {
        "name": "Non-stick pan ",
        "color": "Maroon",
        "number": 1,
      }
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Jane Matthews | #034",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Product Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Container(
                width: 330,
                height: 292,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(3, 3),
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IdentityOfPersonAndAvatar(),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: size.width * 0.8,
                            height: size.height * 0.22,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    right: 8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "* ${ProductOrders[index]["name"]}",
                                            style: TextStyle(
                                              fontFamily: 'Product Sans',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "\t\t\tColor:${ProductOrders[index]["color"]}",
                                            style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "x${ProductOrders[index]["number"]}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              itemCount: ProductOrders.length,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "ksh. 45,350/-",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttn(color: 0xFFFF3D00, lable: "Deny"),
                              buttn(color: 0xFF4CAF50, lable: "Accept"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
