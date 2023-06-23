import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 86, 204, 242),
            Color.fromARGB(255, 47, 128, 237),
          ],
        ),
      ),
    ),
  );
}
