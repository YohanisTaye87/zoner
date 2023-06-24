import 'package:flutter/material.dart';

class ManageAccountTextfield extends StatelessWidget {
  const ManageAccountTextfield({
    super.key,
    required this.hint,
    required this.lable,
  });
  final String lable;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            lable,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.grey[300],
              filled: true,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide.none,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 15,
                height: 2.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
