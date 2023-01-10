import 'package:quizz/Model/UserModel.dart';
import '../Constants/Constants.dart';



highestScoreForLeaderBoard(){

  /// Finding users highest score and storing it to highestScore
  userList.forEach(
          (element) {
    element.highestScore = element
      .scores.reduce((current, next) =>
    current > next ? current : next);
  });

  ///Sorting users based on highest score
  userList.sort(
          (a,b) => b.highestScore!.compareTo(
              a.highestScore!)
  );



}