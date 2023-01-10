import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:quizz/Model/UserModel.dart';
import '../Constants/Constants.dart';
import '../Model/QuestionsModel.dart';
import '../Utils/HighestScoreForLeaderBoard.dart';



class FirebaseService{

  /// For retrieving questions and other related data
  readData() async{

    ///path to firebase database quiz container
    final readFromFB = await FirebaseFirestore.instance.collection("quiz").get().then((value) => value);

    for (var i = 0; i < readFromFB.size ; i++){

      QuestionsModel value = QuestionsModel.fromJson(readFromFB.docs[i].data() as Map<String ,dynamic>);

      /// Add the data to questionData list
      questionData.add(value);

      count.value = questionData.length;
    }
  }

  /// Upload current user data to firebase
  writeData() async{
    await path.set(currentUser.toMap());
  }


  /// get all users data
  getUsers()async{

    ///path to firebase database user container
    final usersFromFB = await FirebaseFirestore.instance.collection("users").get().then((value) => value);
    for (var i = 0; i < usersFromFB.size ; i++){
      UserModel value = UserModel.fromJson(usersFromFB.docs[i].data());
      userList.add(value);
      userCount.value = userList.length;

      /// For leaderBoard
      highestScoreForLeaderBoard();
    }
  }

}


