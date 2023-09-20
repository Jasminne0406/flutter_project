import 'package:flutter/material.dart';
import 'package:first_app/GradientContainer.dart';


void main() {

 final colors = [const Color.fromARGB(255, 34, 159, 255),const Color.fromARGB(255, 0, 0, 0)];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: colors) // passing the name argument 
      ),
    ),
  );
}

