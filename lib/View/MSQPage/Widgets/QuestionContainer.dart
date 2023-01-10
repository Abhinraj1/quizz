import 'package:flutter/material.dart';
import 'package:quizz/Constants/Constants.dart';
import 'package:quizz/Constants/Controllers.dart';

import '../../../Manager/TextStyleManager.dart';


class QuestionContainer extends StatelessWidget {

  const QuestionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   
    Container(
      width: 300,
      height: 250,
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 40
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child:  PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
        controller: questionsPageController.value,
        itemCount: count.value,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, _) {
          return Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(questionData[current.value].question.toString(),
                  textAlign: TextAlign.justify,
                  style: question),
                ),
    );
        }
      )

      );
  }
}
