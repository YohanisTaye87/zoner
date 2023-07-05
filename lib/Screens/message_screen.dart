import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: const [
            Icon(
              Icons.edit,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(right: 20)),
            Icon(Icons.menu, color: Colors.black),
            Padding(padding: EdgeInsets.only(left: 10))
          ],
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          //backgroundColor: Colors.white,
          title: const Text(
            'Messages',
            style: TextStyle(color: Colors.black, fontFamily: 'Product Sans'),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            itemCount: 2,
            itemBuilder: (context, index) => messageCard()));
  }

  Widget messageCard() {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('Assets/Images/cup.png'),
              radius: 40,
            ),
            title: const Text(
              "Modern Kitchen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: const Text(
              'Hi! Is the Black & Decker Blender available at the moment?',
              style: TextStyle(
                  //color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text(
                'ONLINE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  wordSpacing: 1,
                  fontFamily: 'Product Sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  height: 2,
                  color: Color(0xff4caf50),
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
    );
  }
}
