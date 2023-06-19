import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
   MaterialApp(
      home: Scaffold(
        body:  GradientContainer(const Color.fromARGB(255, 32, 4, 81),
        const Color.fromARGB(255, 101, 37, 211)),
      ),
    ),
  );
}
