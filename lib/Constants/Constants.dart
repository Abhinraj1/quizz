import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizz/Model/UserModel.dart';

import '../Model/QuestionsModel.dart';




///Firebase

///write
final path = FirebaseFirestore.instance.collection("users").doc(currentUser.userid);

///Current User
UserModel currentUser = UserModel(scores: []);

///To count correct answers
 var correctSelected = 0.obs;

 ///UserCount For leaderBoard
var userCount = 0.obs;

///UserList For leaderBoard
final List<UserModel> userList = [];

 ///Storage
 final user = GetStorage("user");

///List of question data model
final List<QuestionsModel> questionData = [];

///current question index
var current = 0.obs;

///selected option index
var selected = 5.obs ;

/// Number of questions
var count = 0.obs;