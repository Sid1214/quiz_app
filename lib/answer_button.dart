import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/theme/color.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answertext,
    required this.onTap,
  });
  final String answertext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            foregroundColor: const Color.fromARGB(255, 202, 246, 247),
            backgroundColor: tertiaryColor,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: onTap,
          child: Text(
            answertext,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
          )),
    );
  }
}
