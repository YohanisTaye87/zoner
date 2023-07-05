import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.col,
      required this.Tcol,
      required this.Icol,
      required this.hasIcon,
      required this.register});

  final IconData icon;
  final String label;
  final Color col;
  final Color Tcol;
  final Color Icol;
  final bool hasIcon;
  final bool register;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: TextButton(
          onPressed: () {
            !register
                ? Navigator.pushNamed(context, "/login")
                : Navigator.pushNamed(context, "/OTP");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
            col,
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hasIcon
                  ? Icon(
                      icon,
                      color: Icol,
                    )
                  : const Text(" "),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  label,
                  style: TextStyle(
                    color: Tcol,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
