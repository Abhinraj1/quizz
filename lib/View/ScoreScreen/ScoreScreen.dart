import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizz/Constants/Constants.dart';
import 'package:quizz/Services/Firebase.dart';
import 'package:quizz/View/HomePage/HomePage.dart';
import '../../Manager/TextStyleManager.dart';
import '../../Utils/UpdateDetails.dart';


/// Screen to show score
class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text("YOUR SCORE",
            style: scoreTitle,),
          ),
          Center(
            child: Text(correctSelected.toString(),
              style: scoreTitle,),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 70.0,
                right: 70,
                top: 100),
            child: MaterialButton(
              height: 80,
              color: Colors.white ,
              minWidth: 130,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: ()async{
                /// store locally
                updateDetailsToLocalStorage();

                /// Send data to firebase
                await FirebaseService().writeData();

                Get.offAll(const HomePage());
              },
              child: Center(
                child: Text("HOME",
                    style: title),
              ),),
          )
        ],
      ),
    );
  }
}
