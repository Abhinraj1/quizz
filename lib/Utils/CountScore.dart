

import 'package:quizz/Constants/Constants.dart';



///TO count correct selected answers as score
countScore(){

if(questionData.isNotEmpty){

 ///selected option by user
  String selectedAnswer = questionData[current.value].options!.elementAt(selected.value.toInt());

  ///correct answer from firebase
  String correctAnswer = questionData[current.value].correct.toString();

  if(selectedAnswer.toString() == correctAnswer.toString()){

    correctSelected.value++;
  }else{
  print("IS EMPTY =================EMPTY========================= ${questionData}" );
}
}
}