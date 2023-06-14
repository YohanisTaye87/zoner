import 'package:flutter/material.dart';

// import 'package:international_phone_input/international_phone_input.dart';
// import 'package:pintextfield/pintextfield.dart';

import 'Widget/LoginButton.dart';
import 'pages/Page6.dart';
import 'pages/Page7.dart';
import 'pages/page8.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: page8(),
        // page7(),

        // page6(),
      ),
    );
  }
}
