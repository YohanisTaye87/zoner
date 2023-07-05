import 'package:flutter/material.dart';

class Textarea extends StatelessWidget {
  Textarea({
    super.key,
    required this.hint,
    required this.icon,
  });
  late String hint;
  late IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
          prefixIcon: Icon(icon),
          hintText: hint,
        ),
      ),
    );
  }
}
