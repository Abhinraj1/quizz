import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizz/Services/Firebase.dart';
import 'package:quizz/View/LoginPage/LoginPage.dart';
import '../../Services/Auth.dart';
import 'Widgets/LeaderBoard.dart';
import 'Widgets/PreviousScore.dart';
import 'Widgets/StartQuizButton.dart';




class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

          /// To sign out
          signOut().then((value) => Get.offAll(const LoginPage()));
    },
        label: const Text("Sign out"),

      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          /// Button to Start quiz
          StartQuizButton(),

          /// Previous scores card
          PreviousScore(),

          /// Container to show leader board
          LeaderBoard()
        ],
        ),
    );
  }
}

