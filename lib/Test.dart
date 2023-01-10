import 'package:flutter/material.dart';
import 'package:quizz/View/MSQPage/Widgets/NextAndPreviousButton.dart';
import 'package:quizz/View/MSQPage/Widgets/OptionsContainer.dart';
import '../Constants/Constants.dart';
import 'Constants/Controllers.dart';
import 'Model/QuestionsModel.dart';
import 'Services/Firebase.dart';
import 'View/MSQPage/Widgets/QuestionContainer.dart';




class ListEmployeeScreen extends StatefulWidget {
  const ListEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<ListEmployeeScreen> createState() => _ListEmployeeScreenState();
}

class _ListEmployeeScreenState extends State<ListEmployeeScreen> {
  @override


  @override
  Widget build(BuildContext context) {


    return
       Scaffold(
         backgroundColor: Colors.red,
         floatingActionButton: FloatingActionButton(
           onPressed: ()async{
             setState(() {
             });
            // await docUser.set({
            //   "id" : docUser.id,
            //   'question': "fOURTH Question",
            //   'correct': "pineapple",
            //   'selectedOption': 5,
            //   'options': [
            //     "apple",
            //     "Mango",
            //     "Pineapple",
            //     "Orange",
            //   ],
            // });

           },
         ),
         body:
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // QuestionContainer(),
            OptionsContainer(),
            NextButton()
          ],
        )
       );






        // ListView.builder(
        //   itemCount: set.length,
        //     itemBuilder: (
        //         BuildContext context,
        //         int index)
        //     {
        //        bool flag = true;//employeeStatus(active,year);
        //     ///   Map que = snapshot.value as Map;
        //
        //       return
        //         Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: ListTile(
        //             shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(15)
        //             ),
        //             tileColor: Colors.white,
        //             title: Text("Name: ${set[index].question}",
        //               style: const TextStyle(
        //                   fontWeight: FontWeight.w800,
        //                   fontSize: 25,
        //                   color: Colors.grey
        //               ),
        //             ),
        //             subtitle: Text("Exp Years: ${set[index].correct}",
        //               style:  TextStyle(
        //                   fontWeight: FontWeight.w800,
        //                   fontSize: 15,
        //                   color: Colors.amber.shade700
        //               ),
        //             ),
        //             trailing: Icon(
        //               Icons.flag_rounded,
        //               color: flag ? Colors.green:Colors.red,
        //             ),
        //           ),
        //         );
        //     }
        // ) ,

  }
}



