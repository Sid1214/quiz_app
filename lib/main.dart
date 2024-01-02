import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> selectedanswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedanswers.add(answer);
    if (selectedanswers.length == question.length) {
      setState(() {
        // selectedanswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedanswers = [];
      activeScreen = 'questions-screen';
    });
  }

  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = SplashScreen(switchscreen);
  //   super.initState();
  // }

  // void switchscreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }
  // void chooseanswer( String answer ) {
  //   setState(() {
  //     selectedanswers.add(answer);
  //     if (answer == question[questionIndex].answers[0]) {
  //       activeScreen = const QuestionScreen();
  //     }
  //   });
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onselectanswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenanswers: selectedanswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      title: 'Quizz App',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(154, 160, 245, 251)),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 36, 80, 145),
            Color.fromARGB(255, 85, 193, 209),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenWidget,
        ),
      ),
    );
  }
}
