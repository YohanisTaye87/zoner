import 'package:flutter/material.dart';

// import 'package:international_phone_input/international_phone_input.dart';
// import 'package:pintextfield/pintextfield.dart';

import 'Widget/LoginButton.dart';
import 'models/bar_chart_model.dart';
import 'pages/NewOrderScreen.dart';
import 'pages/RevenueGreaph.dart';
import 'pages/SignUpPage.dart';
import 'pages/LoginPage.dart';
import 'pages/ViewOrderScreen.dart';
import 'pages/OTPScreen.dart';
import 'pages/customerPages/Profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primarySwatch: Colors.blue,
        textTheme: TextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProfilePage(),
        /*   "/ManageAccount":(context) => ,
       "/Orders":(context) => ,
       "/Whishlist":(context) => ,
       "/Share":(context) => ,
       "/Settings":(context) => , */
      },
      /*  home: /*  Scaffold(
        body:
            // OTPScreen(),
            // page7(),

            // page6(),
            // NewOrderScreen(),
            // OrderViewPage(),
       
      ), */
          ProfilePage(), */
    );
  }
}
