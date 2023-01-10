import 'package:flutter/material.dart';
import 'package:quizz/Constants/Constants.dart';
import '../../../Manager/TextStyleManager.dart';



class PreviousScore extends StatelessWidget {
  const PreviousScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 300,
        margin: const EdgeInsets.only(
          top: 10
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.indigo.shade900
          ),
        ),
        child: Column(
          children: [
            Text("Your Previous Scores",
            style:title,),
            currentUser.scores.length == 0 ?
            SizedBox(
                width: 250,
                height: 120,
                child: Center(child:  Text("No Score",
                  style: leaderBoardUserName,)
                )
            ) :
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: currentUser.scores.length,
                  itemBuilder: (context,index){
                return
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(currentUser.scores[index].toString(),
                        //"Your Previous Scores",
                        style:leaderBoardScore,),
                    ),
                  );
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}
