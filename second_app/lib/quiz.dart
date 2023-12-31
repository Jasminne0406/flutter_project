import 'package:flutter/material.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen; 
   final List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  //  void initState() {
  //     activeScreen = StartScreen(switchScreen);
  //     super.initState();
  //  }

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
  }

 @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer
        );
    }

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),),
          child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionScreen(),
        ),
      ),
    );
  }
}