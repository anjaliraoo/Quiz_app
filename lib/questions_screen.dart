import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer('...');
    setState(() {
      currentQuestionIndex += 1;
    });    
  }

  @override
  Widget build( context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,//be as wide as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(currentQuestion.text,
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 3, 17, 45),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffleAnswers().map((answer) {
              return AnswerButton(
                answerText: answer, 
              onTap:() {
                answerQuestion(answer);
              },);
            }),
          ],
        ),
      ),
    );
  }
}