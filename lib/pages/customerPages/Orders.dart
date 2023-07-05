import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Orders",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Completed"),
              Tab(text: "Canceled"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('Assets/Images/face.jpeg'),
                radius: 40,
              ),
              title: const Text(
                "Modern Kitchen",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              subtitle: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'ksh 38,700/',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: '\n14 Jan, 2022 5:40PM',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              trailing: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.withOpacity(0.2))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Reorder",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 2,
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(15.0),
            child: Divider(
              color: Color.fromARGB(255, 193, 192, 192),
              height: 1,
              indent: 90,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('Assets/Images/face.jpeg'),
                radius: 40,
              ),
              title: Text(
                "Modern Kitchen",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              subtitle: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'ksh 38,700/',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: '\n14 Jan, 2022 5:40PM',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 2,
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(15.0),
            child: Divider(
              color: Color.fromARGB(255, 193, 192, 192),
              height: 1,
              indent: 90,
            ),
          ),
        ),
      ),
    );
  }
}
