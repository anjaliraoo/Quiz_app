import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png',
            width: 200,),
            const Text('Learn Flutter the fun way!'),
            const ElevatedButton(onPressed: null,
             child: Text('Start Quiz',
             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),),
             )
          ],
        );
  }
}