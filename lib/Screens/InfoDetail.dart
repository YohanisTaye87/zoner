import 'package:flutter/material.dart';

import '../models/menus.dart';

class InfoDetail extends StatefulWidget {
  InfoDetail(this.imgurl);
  String imgurl;
  @override
  State<InfoDetail> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {
  int _currentIndex = 0;
  bool isSelected = false;
  void toggleFavorite() {
    setState(() {
      if (isSelected == true) {
        isSelected = false;
      } else {
        isSelected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> Imgurl = ['assets/Images/img1.jpg', 'assets/Images/img2.jpg'];
    return SafeArea(
      top: false,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                alignment: AlignmentDirectional.bottomEnd,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(50),
                    //     bottomRight: Radius.circular(50)),
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(widget.imgurl))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          toggleFavorite();
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: isSelected ? Colors.red : Colors.black,
                          size: 30,
                        )),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    Menues.title1,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(Menues.alltext,
                      style: const TextStyle(
                          fontSize: 15,
                          wordSpacing: 1,
                          fontFamily: 'Product Sans')),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('1- Keep a back-up file',
                        style: TextStyle(
                            fontSize: 18,
                            wordSpacing: 1,
                            fontFamily: 'Product Sans',
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(Menues.maintext,
                      style: const TextStyle(
                          fontSize: 15,
                          wordSpacing: 1,
                          fontFamily: 'Product Sans'))
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 28,
            //    selectedFontSize: 15,
            selectedItemColor: Colors.amber,
            selectedLabelStyle: const TextStyle(color: Colors.white),
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info',),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded), label: 'Messages'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ]),
      ),
    );
  }
}
