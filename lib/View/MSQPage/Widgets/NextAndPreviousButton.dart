import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizz/View/HomePage/HomePage.dart';
import 'package:quizz/View/ScoreScreen/ScoreScreen.dart';
import '../../../Constants/Constants.dart';
import '../../../Constants/Controllers.dart';
import '../../../Manager/TextStyleManager.dart';
import '../../../Utils/CountScore.dart';


class NextButton extends StatefulWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {


  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
          height: 50,
          width: 300,
          child:
          Obx(
                  () {
                return MaterialButton(
                  height: 50,
                  color:
                  selected <=4 ?
                  Colors.white : Colors.red,

                  minWidth: 130,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: (){
                    _onPressed();
                  },
                  child: Center(
                    child: Text("NEXT  QUESTION",
                        style: button),
                  ),
                );
              }
          )

      );
  }


  _onPressed(){
    ///End at last index is pending
    if( questionData[current.value].selectedOption! <=4 && current.value < count.value-1){
      optionsPageController.value.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn);
      questionsPageController.value.nextPage(duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn);
      countScore();

      selected.value = 5;
      current.value++;
    }else if(questionData[current.value].selectedOption! >4){
      Get.snackbar(
        "Note",
        "Please Select an Option to proceed further",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }else{
      countScore();
      /// Save score locally
      currentUser.scores.add(correctSelected.value.toInt());
      Get.off(const ScoreScreen());
    }

  }
}
