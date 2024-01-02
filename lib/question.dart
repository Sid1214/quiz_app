import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/Theme/color.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onselectanswer});

  final void Function(String answer) onselectanswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionIndex = 0;

  void answerQuestion(selectedanswers) {
    widget.onselectanswer(selectedanswers);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = question[questionIndex];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              textAlign: TextAlign.center,
              currentquestion.text,
              style: GoogleFonts.lato(
                  fontSize: 23,
                  color: primaryColor,
                  fontWeight: FontWeight.bold)
              // TextStyle(
              //   fontSize: 22,
              //   color: primaryColor,
              // ),

              ),
          const SizedBox(height: 25),
          ...currentquestion.getShuffledAnswers().map(
            (answer) {
              return AnswerButton(
                answertext: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            },
          ),
          // AnswerButton(answertext: currentquestion.answers[0], onTap: () {}),
          // const SizedBox(height: 10),
          // AnswerButton(answertext: currentquestion.answers[1], onTap: () {}),
          // const SizedBox(height: 10),
          // AnswerButton(answertext: currentquestion.answers[2], onTap: () {}),
          // const SizedBox(height: 10),
          // AnswerButton(answertext: currentquestion.answers[3], onTap: () {}),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: tertiaryColor,
          //       textStyle: TextStyle(
          //         fontSize: 18,
          //         color: secondaryColor,
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       "Answer1",
          //     )),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: tertiaryColor,
          //       textStyle: TextStyle(
          //         fontSize: 18,
          //         color: secondaryColor,
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       "Answer2",
          //     )),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: tertiaryColor,
          //       textStyle: TextStyle(
          //         fontSize: 18,
          //         color: secondaryColor,
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       "Answer3",
          //     )),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: tertiaryColor,
          //       textStyle: TextStyle(
          //         fontSize: 18,
          //         color: secondaryColor,
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       "Answer4",
          //     )),
        ],
      ),
    ));
  }
}
