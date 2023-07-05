import 'package:flutter/material.dart';
import 'package:zonerapp/Screens/boot_screen.dart';
import 'package:zonerapp/Widget/bottom_nav.dart';
import 'package:zonerapp/pages/LoginPage.dart';
import 'package:zonerapp/pages/OTPScreen.dart';
import 'package:zonerapp/pages/SignUpPage.dart';

// import 'package:international_phone_input/international_phone_input.dart';
// import 'package:pintextfield/pintextfield.dart';

import 'pages/customerPages/ManageAccountPage.dart';
import 'pages/customerPages/Orders.dart';
import 'pages/customerPages/Whishlists.dart';

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
        textTheme: const TextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BootScreen(),
        'signup': (context) => const SignUP(),
        "/login": (context) => const logInPage(),
        "/OTP": (context) => const OTPScreen(),
        "/ManageAccount": (context) => const ManageAccount(),
        "/Orders": (context) => const OrdersPage(),
        "/Whishlist": (context) => const WhishlistPage(),
        "/nav_bar": (context) => const BottomNavBar()
        /*  "/Share":(context) => ,
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
