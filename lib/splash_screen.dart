import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Theme/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 270,
            color: const Color.fromARGB(148, 203, 233, 239),
            // const Color.fromARGB(148, 94, 243, 245),
          ),
          const SizedBox(height: 40),
          Text("Learn Flutter the fun way !!",
              style: GoogleFonts.aboreto(
                  fontSize: 18,
                  color: secondaryColor,
                  fontWeight: FontWeight.w900)
              // TextStyle(
              //   fontSize: 20,
              //   color: secondaryColor,
              //   //  Color.fromARGB(255, 35, 110, 163),
              // ),
              ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: tertiaryColor),
            onPressed: startquiz,
            icon: Icon(
              Icons.keyboard_double_arrow_right_outlined,
              color: secondaryColor,
            ),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.aboreto(
                  color: secondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
