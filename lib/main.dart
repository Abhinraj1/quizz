import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizz/Constants/Constants.dart';
import 'Services/Firebase.dart';
import 'Utils/CheckUserAuthFromStorage.dart';
import 'View/HomePage/HomePage.dart';
import 'View/LoginPage/LoginPage.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init("user");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///Check whether the user has already logged in or not
    checkUserAuthFromStorage();

    /// retrieve data from firebase
    initFunctions();

  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:
          ///Based on user respective screen will be shown
      currentUser.userid == "" ||
         currentUser.userid == null ?
      const LoginPage() :
      const HomePage()
    );
  }

  initFunctions()async{
    /// For retrieving questions and other related data
    await FirebaseService().readData();

    /// For retrieving users list and scores
    await FirebaseService().getUsers();
  }
}
