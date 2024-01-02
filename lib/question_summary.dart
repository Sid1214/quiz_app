import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return SummaryItem(data);
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text(((data['question_index'] as int) + 1).toString()),
            //     const SizedBox(width: 20),
            //     Expanded(
            //       child: Column(
            //           // mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(data['question'] as String,
            //                 textAlign: TextAlign.justify,
            //                 style: GoogleFonts.lato(
            //                     fontSize: 13,
            //                     color: primaryColor,
            //                     fontWeight: FontWeight.w600)),
            //             const SizedBox(height: 20),
            //             Text(data['user_answer'] as String,
            //                 style: GoogleFonts.lato(
            //                     fontSize: 13,
            //                     color: Color2,
            //                     fontWeight: FontWeight.w700)
            //                 // textAlign: TextAlign.start,
            //                 ),
            //             const SizedBox(height: 10),
            //             Text(data['correct_answer'] as String,
            //                 style: GoogleFonts.lato(
            //                     fontSize: 13,
            //                     color: Color1,
            //                     fontWeight: FontWeight.w600)
            //                 // textAlign: TextAlign.start,
            //                 ),
            //             const SizedBox(height: 30),
            //           ]),
            //     ),
            //   ],
            // );
          }).toList(),
        ),
      ),
    );
  }
}
