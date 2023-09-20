import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{

  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            )
          ),
          const SizedBox(height:30),
          ...currentQuestion.getShuffledAnswer().map((answer){
            return AnswerButton(answerText: answer, onTap: () {});
          })
          // AnswerButton(
          //   answerText: currentQuestion.answers[0],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[3],
          //   onTap: () {},
          // ),
        ],),
      ),
    );
  }
}