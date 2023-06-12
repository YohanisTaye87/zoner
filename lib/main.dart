import 'package:flutter/material.dart';
// import 'package:international_phone_input/international_phone_input.dart';
import 'package:pintextfield/pintextfield.dart';

import 'Widget/LoginButton.dart';
import 'pages/Page6.dart';
import 'pages/Page7.dart';

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

class page8 extends StatelessWidget {
  const page8({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: size.width * 0.5,
            child: Image.asset('Assets/Images/Logo.png'),
          ),
          Text("Enter the OTP sent to the mobile \n number you entered"),
          PinTextField(
              number: 6,
              onComplete: (code) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Completed code is $code')));
              },
              validator: (value) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Do not leave any codes missing!')));
              }),
          Column(
            children: [
              LoginButton(
                icon: Icons.person,
                label: "VERIFY CODE",
                col: Colors.yellow,
                Tcol: Colors.black,
                Icol: Colors.yellow,
                hasIcon: false,
              ),
              LoginButton(
                icon: Icons.person,
                label: "RESEND CODE(43 secs)",
                col: Colors.black,
                Tcol: Colors.white,
                Icol: Colors.yellow,
                hasIcon: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
