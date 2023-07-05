import "package:eva_icons_flutter/eva_icons_flutter.dart";
import "package:flutter/material.dart";

import "../Widget/LoginButton.dart";
import "../Widget/PhoneInput.dart";

class logInPage extends StatelessWidget {
  const logInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 90),
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: Image.asset('Assets/Images/Logo.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: SizedBox(
                            child: PhoneInput(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      LoginButton(
                        register: true,
                        icon: Icons.apple,
                        label: "SIGN UP",
                        col: Color(0xFFFAB631),
                        Tcol: Colors.black,
                        Icol: Color(0xFFFAB631),
                        hasIcon: false,
                      ),
                      LoginButton(
                        register: true,
                        icon: Icons.apple,
                        label: "SIGN UP WITH APPLE",
                        col: Colors.black,
                        Tcol: Colors.white,
                        Icol: Colors.white,
                        hasIcon: true,
                      ),
                      LoginButton(
                        register: true,
                        icon: EvaIcons.google,
                        label: "SIGN UP WITH GOOGLE",
                        col: Color(0xFFF5F5F5),
                        Tcol: Colors.black,
                        Icol: Colors.white,
                        hasIcon: true,
                      ),
                      LoginButton(
                        register: true,
                        icon: EvaIcons.facebook,
                        label: "SIGN UP WITH FACEBOOK",
                        col: Color(0xFF29369B),
                        Tcol: Colors.white,
                        Icol: Colors.white,
                        hasIcon: true,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
