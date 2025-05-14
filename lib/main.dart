import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 79, 8, 107),
        body: GradientContainer(
           const Color.fromARGB(255, 24, 61, 129),
           const Color.fromARGB(255, 44, 84, 160),
          ),
      ),
    ),
  );
}
