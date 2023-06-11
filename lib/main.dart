import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 32, 4, 81),Color.fromARGB(255, 101, 37, 211)),
      ),
    ),
  );
}


