import 'package:flutter/material.dart';

import '../Widget/OrderingPeopleList.dart';

class TapBarPage extends StatefulWidget {
  const TapBarPage({super.key});

  @override
  State<TapBarPage> createState() => _TapBarPageState();
}

class _TapBarPageState extends State<TapBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            "Modern Kitchen",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Product Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.black,
            overlayColor: MaterialStatePropertyAll(Colors.white),
            tabs: [
              Tab(
                text: 'New Orders',
              ),
              Tab(
                text: 'In Progress',
              ),
              Tab(
                text: 'Ready Orders',
              ),
              Tab(
                text: 'Dispatch',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NewOrderScreen(),
            InProgressScreen(),
            ReadyOrdersScreen(),
            DispatchScreen(),
          ],
        ),
      ),
    );
  }
}

class NewOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 2,
        ),
        child: Column(
          children: const [
            OrderinPeopleList(label: "View Order"),
            OrderinPeopleList(label: "View Order"),
            OrderinPeopleList(label: "View Order"),
            Center(
              child: Text('InProgressScreen'),
            ),
          ],
        ),
      ),
    );
  }
}

class InProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 2,
        ),
        child: Column(
          children: const [
            OrderinPeopleList(label: "Order Ready"),
            OrderinPeopleList(label: "View Order"),
            OrderinPeopleList(label: "View Order"),
            Center(
              child: Text('InProgressScreen'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadyOrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ReadyOrdersScreen'),
    );
  }
}

class DispatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('DispatchScreen'),
    );
  }
}
