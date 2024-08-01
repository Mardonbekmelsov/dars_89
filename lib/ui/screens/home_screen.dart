import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue.shade50,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 5),
                  color: Colors.pink.shade200,
                ),
                child: const Icon(
                  Icons.person,
                  size: 200,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            "Mardonbek Melsov Mirzohid O'g'li",
            style: TextStyle(
              fontSize: 40,
              color: Colors.blueAccent.shade700,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Flutter Mobile Developer",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Python",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "C",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Junior",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.place,
                color: Colors.blueAccent.shade700,
              ),
              const Text(
                "Tashkent, Uzbekistan",
              ),
            ],
          ),
        
        ],
      ),
    );
  }
}
