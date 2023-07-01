import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(151, 212, 210, 217),),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset('assets/images/quiz-logo.png',
          //   width: 300,),
          // ),
          const SizedBox(height: 25,),
          const Text('Learn Flutter the fun Way!!',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18),),
          const SizedBox(height: 25,),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz',
          style: TextStyle(fontSize: 24),),
          )
        ],
      ));
  }
}