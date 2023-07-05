import 'package:flutter/material.dart';

class IdentityOfPersonAndAvatar extends StatelessWidget {
  const IdentityOfPersonAndAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            width: 45.81,
            height: 50,
            child: const CircleAvatar(
              backgroundImage: AssetImage('Assets/Images/face.jpeg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Jane Matthews",
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                "#034 | 2:30 PM",
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF6D6D6D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
