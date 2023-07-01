import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(147, 5, 133, 133),
              Colors.blueGrey,
              Color.fromARGB(192, 3, 139, 80),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft)
          ),
        child: const StartScreen(),
        )),
  ));
}