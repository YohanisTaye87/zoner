import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zonerapp/Screens/onboarding.dart';

class BootScreen extends StatefulWidget {
  const BootScreen({super.key});

  @override
  State<BootScreen> createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Image(
                image: AssetImage(
                  'Assets/Images/zoner.png',
                ),
                height: 100.0,
                width: 350.0,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Connect With Businesses Around You',
              style: TextStyle(fontFamily: 'Product Sans'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
