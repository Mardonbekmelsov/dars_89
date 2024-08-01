import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 46,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          "images/chat.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Open-Minded",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Text(
                          "Always ready about to learn newest",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 46,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          "images/emoji.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Good-Humoured & Polite",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Text(
                          "Ability to get along with peole quickly",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 46,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.people_alt,
                          size: 45,
                          color: Colors.lightBlue.shade900,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Team Work",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Text(
                          "Well developed communication skills & ability to work with team",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
