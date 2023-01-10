import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizz/View/MSQPage/MCQPage.dart';

import '../../../Manager/TextStyleManager.dart';


/// Button to Start quiz
class StartQuizButton extends StatelessWidget {
  const StartQuizButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: MaterialButton(
          height: 50,
          color:  Colors.indigo.shade900,
          minWidth: 200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: (){
            Get.offAll(const MCQPage());
          },
          child: Center(
            child: Text("START A NEW QUIZ",
                style: startQuizButton),
          ),
        ),
      );

  }
}