import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.icon,
    required this.label,
    required this.col,
    required this.Tcol,
    required this.Icol,
    required this.hasIcon,
  });

  final IconData icon;
  final String label;
  final Color col;
  final Color Tcol;
  final Color Icol;
  final bool hasIcon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon
                ? Icon(
                    this.icon,
                    color: Icol,
                  )
                : Text(" "),
            Text(
              "${label}",
              style: TextStyle(
                color: Tcol,
              ),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
          col,
        )),
      ),
    );
  }
}
