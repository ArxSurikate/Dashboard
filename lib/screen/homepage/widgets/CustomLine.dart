import 'dart:math';

import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    double value = Random().nextDouble();
    return Card(
      margin: const EdgeInsets.all(8),
      
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Missions réalisées",
              style: TextStyle(fontSize: 24),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LinearProgressIndicator(
                  minHeight: 20,
                  value: value,
                  backgroundColor: Color(0xffbdc3c7),
                  valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF4b6584),),
                ),
              ),
            ),
            Text(
              "${(value * 10).ceil()}/11",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
