import 'package:flutter/material.dart';

class CustomCardTwo extends StatelessWidget {
  const CustomCardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.flag,
            color: Colors.grey[900],
            size: 64,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "15",
            style: TextStyle(fontSize: 34, color: Colors.grey[900]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Mission Validées",
              textAlign: TextAlign.center,
              
              style: TextStyle(fontSize: 24, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
