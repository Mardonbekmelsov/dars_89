import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 340,
            child: Text(
              "Hello! I am based in Tashkent, Uzbekistan and there are plenty of ways to get in touch with me",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.lightBlue.shade900,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "mardonbekmelsov@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
