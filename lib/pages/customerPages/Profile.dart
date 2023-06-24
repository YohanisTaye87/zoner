import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map Profilebutton = {
    "Account": [
      {
        Icon: Icons.person,
        "title": "Manage Account",
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/ManageAccount"
      },
      {
        Icon: Icons.av_timer_outlined,
        "title": "Orders",
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/Orders"
      },
      {
        Icon: Icons.favorite,
        "title": "Whishlist",
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/Whishlist"
      },
      {
        Icon: Icons.share,
        "title": "Share Profile",
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/Share"
      },
      {
        Icon: Icons.settings,
        "title": "Settings",
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/Settings"
      }
    ],
    "Support": [
      {
        Icon: Icons.chat_bubble,
        "title": "Live Chat",
        "indicator": false,
        "fIcon": Null,
        "navPage": "/LiveChat"
      },
      {
        Icon: Icons.help,
        "title": "Help & FAQS",
        "indicator": true,
        "fIcon": Icons.keyboard_arrow_right,
        "navPage": "/LiveChat"
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/Images/face.jpeg'),
                      radius: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jane Matthews",
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "+254 712 099 088",
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.37,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  Profilebutton["Account"][index]["navPage"]
                                      .toString());
                            },
                            child: ListTile(
                              leading: Icon(
                                Profilebutton["Account"][index][Icon],
                                color: Colors.black,
                              ),
                              title: Text(
                                  Profilebutton["Account"][index]["title"]),
                              trailing: Icon(
                                Profilebutton["Account"][index]["fIcon"],
                                color: Colors.black,
                              ),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                    Text(
                      "Support",
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.13,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Profilebutton[index]["navPage"]);
                            },
                            child: ListTile(
                              leading: Icon(
                                Profilebutton["Support"][index][Icon],
                                color: Colors.black,
                              ),
                              title: Text(
                                  Profilebutton["Support"][index]["title"]),
                              trailing: Profilebutton["Support"][index]
                                      ["indicator"]
                                  ? Icon(
                                      Profilebutton["Support"][index]["fIcon"],
                                      color: Colors.black,
                                    )
                                  : Text(""),
                            ),
                          );
                        },
                        itemCount: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: InkWell(
                        onTap: () {
                          print(" this is the lOGING OUT BUTT");
                        },
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                        ),
                      ),
                    )
                  ],
                ),
              )
              // this one is the edge of parent collumn
            ],
          ),
        ),
      ),
    );
  }
}

Widget SupprtListTile() {
  return ListTile();
}
