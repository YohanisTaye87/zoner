import "package:flutter/material.dart";

import "../Widget/LoginButton.dart";
import "../Widget/PhoneInput.dart";

class page7 extends StatelessWidget {
  const page7({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    child: Image.asset('Assets/Images/Logo.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 50,
                    ),
                    child: SizedBox(
                      child: PhoneInput(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        LoginButton(
                          icon: Icons.person,
                          label: "SIGN UP",
                          col: Colors.yellow,
                          Tcol: Colors.black,
                          Icol: Colors.yellow,
                          hasIcon: false,
                        ),
                        LoginButton(
                          icon: Icons.apple,
                          label: "SIGN UP WITH APPLE",
                          col: Colors.black,
                          Tcol: Colors.white,
                          Icol: Colors.white,
                          hasIcon: true,
                        ),
                        LoginButton(
                          icon: Icons.person,
                          label: "SIGN UP WITH GOOGLE",
                          col: Colors.grey,
                          Tcol: Colors.black,
                          Icol: Colors.white,
                          hasIcon: true,
                        ),
                        LoginButton(
                          icon: Icons.facebook,
                          label: "SIGN UP WITH FACEBOOK",
                          col: Color.fromARGB(255, 8, 26, 185),
                          Tcol: Colors.white,
                          Icol: Colors.white,
                          hasIcon: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
