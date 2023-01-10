import 'package:flutter/material.dart';
import 'package:quizz/Constants/Constants.dart';
import '../../../Manager/TextStyleManager.dart';



class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        margin: const EdgeInsets.only(
            top: 30
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
            Text("LeaderBoard",
              style:title,),
            SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Name",
                   style:leaderBoardTitle,),
                 Text("Score",
                   style:leaderBoardTitle,),
               ],
              ),
            ),

            userCount.value == 0 ?

                ///To refresh
                 InkWell(
                     onTap: (){
                       setState(() {});
                     },
                     child: SizedBox(
                       width: 250,
                         height: 200,
                         child: Center(
                             child:  Text("Tap To Load!",
                         style: leaderBoardUserName,
                         )
                         ))) :
            SizedBox(
              height: 230,
              child: ListView.builder(
                  itemCount: userCount.value,
                  itemBuilder: (context,index){
                    return
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: SizedBox(
                         width: 250,
                         child: ListTile(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                           title: Text(userList[index].name.toString(),
                           style: leaderBoardUserName),
                           trailing: Text(userList[index].highestScore.toString(),
                               style: leaderBoardScore),
                         ),
                       ),
                     );
                  }),
            )

          ],
        ),
      ),
    );
  }
}
