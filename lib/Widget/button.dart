import 'package:flutter/material.dart';

class buttn extends StatelessWidget {
  const buttn({
    super.key,
    required this.lable,
    required this.color,
  });
  final String lable;
  final color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(color),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 30),
        child: Text(
          lable,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
