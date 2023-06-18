import 'package:flutter/material.dart';

import 'IdentityOfPersonAndAvatar.dart';

class OrderinPeopleList extends StatelessWidget {
  const OrderinPeopleList({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IdentityOfPersonAndAvatar(),
              Container(
                width: 100,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xFFFFFFFF),
                      // height: 14.56,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF4CAF50)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
