import 'package:quiz_app/Models/quiz_question.dart';

final question = [
  QuizQuestion("What is Flutter?", [
    "Open-source UI toolkit",
    "Open-source programming language for cross-platform applications",
    "Open-source backend development framework",
    "DBMS toolkit"
  ]),
  QuizQuestion(
      "Which programming language is used to build Flutter applications?",
      ["Dart", "Kotlin", "Java", "Go"]),
  QuizQuestion(
      "Access to a cloud database through Flutter is available through which service?",
      ["Firebase", "SQLite", "NOSQL", "MYSQL"]),
  QuizQuestion(
      "What are some key advantages of Flutter over alternate frameworks?", [
    "All of the these",
    "Rapid cross-platform application development and debugging tools",
    "Future-proofed technologies and UI resources",
    "Strong supporting tools for application development and launch"
  ]),
  QuizQuestion(
      "Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?",
      ["runApp()", "main()", "container()", "root()"]),
  QuizQuestion(
      "What is the key configuration file used when building a Flutter project?",
      ["pubspec.yaml", "pubspec.xml", "config.html", "root.xml"]),
  QuizQuestion(
      "Which component allows us to specify the distance between widgets on the screen?",
      ["SizedBox", "Card", "SafeArea", "Container"]),
  QuizQuestion(
      "Which release mode will not contain any debugging data when run?",
      ["Release", "Profile", "Run", "Test"]),
  QuizQuestion("What widget would you use for repeating content in Flutter?",
      ["ListView", "Stack", "ExpandedView", "ArrayView"]),
  QuizQuestion(
      "Which of the following works with a small r key on the terminal or commands prompt?",
      ["Hot Reload", " Hot Restart", "Cold Reload", "Cold Restart"]),
];
