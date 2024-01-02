import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Theme/color.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemData['question'] as String,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.lato(
                          fontSize: 13,
                          color: primaryColor,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),
                  Text(itemData['user_answer'] as String,
                      style: GoogleFonts.lato(
                          fontSize: 13,
                          color: Color2,
                          fontWeight: FontWeight.w700)
                      // textAlign: TextAlign.start,
                      ),
                  const SizedBox(height: 10),
                  Text(itemData['correct_answer'] as String,
                      style: GoogleFonts.lato(
                          fontSize: 13,
                          color: Color1,
                          fontWeight: FontWeight.w600)
                      // textAlign: TextAlign.start,
                      ),
                  const SizedBox(height: 30),
                ]),
          ),
        ],
      ),
    );
  }
}
