import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/Constants.dart';
import 'Widgets/NextAndPreviousButton.dart';
import 'Widgets/OptionsContainer.dart';
import 'Widgets/QuestionContainer.dart';



class MCQPage extends StatelessWidget {
  const MCQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body:
      Obx(
         () {
           if(count.value != 0){
             return Column(
               mainAxisAlignment:MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:  const [
                 /// Container to show questions
                 QuestionContainer(),

                 ///Container to show options
                 OptionsContainer(),

                 /// Custom button
                 NextButton()
                 ,
               ],
             );
           }else{
             return const Center(
               child: CircularProgressIndicator(
                 color: Colors.white,
               ),
             );
           }

        }
      ),
    );
  }
}
