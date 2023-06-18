// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../Widget/LoginButton.dart';
import '../Widget/Textarea.dart';

class page6 extends StatelessWidget {
  const page6({super.key});

  final String label = "Signe up";
  final IconData icon = Icons.apple;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      // height: size.height,

                      child: Image.asset('Assets/Images/Logo.png'),
                    ),
                    const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Enter your details to experience the",
                      style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "application",
                      style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50.0,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Textarea(
                    hint: "Full Name",
                    icon: EvaIcons.activity,
                  ),
                  Textarea(
                    hint: "Full Name",
                    icon: Icons.person,
                  ),
                  Textarea(
                    hint: "Full Name",
                    icon: Icons.person,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                LoginButton(
                  icon: icon,
                  label: "SIGN UP",
                  col: const Color(0xFFFAB631),
                  Tcol: Colors.black,
                  Icol: const Color(0xFFFAB631),
                  hasIcon: false,
                ),
                LoginButton(
                  icon: icon,
                  label: "SIGN UP WITH APPLE",
                  col: Colors.black,
                  Tcol: Colors.white,
                  Icol: Colors.white,
                  hasIcon: true,
                ),
                LoginButton(
                  icon: EvaIcons.google,
                  label: "SIGN UP WITH GOOGLE",
                  col: const Color(0xFFF5F5F5),
                  Tcol: Colors.black,
                  Icol: Colors.white,
                  hasIcon: true,
                ),
                LoginButton(
                  icon: EvaIcons.facebook,
                  label: "SIGN UP WITH FACEBOOK",
                  col: const Color(0xFF29369B),
                  Tcol: Colors.white,
                  Icol: Colors.white,
                  hasIcon: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
