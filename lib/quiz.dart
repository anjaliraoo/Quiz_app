import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen(){
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var screenWidget = StartScreen(() {switchScreen();}); 
    return MaterialApp(
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
        child: activeScreen == 'start-screen' 
        ? StartScreen(() {switchScreen();})
        : const QuestionsScreen(),
        ),
      ),
  );
  }
}