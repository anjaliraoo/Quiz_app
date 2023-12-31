import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(151, 212, 210, 217),),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset('assets/images/quiz-logo.png',
          //   width: 300,),
          // ),
          const SizedBox(height: 25,),
          Text('Learn Flutter the fun Way!!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 25,),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
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