import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quizz/Constants/Constants.dart';
import 'package:quizz/View/HomePage/HomePage.dart';
import '../../Manager/ImageManager.dart';
import '../../Manager/TextStyleManager.dart';
import '../../Services/Auth.dart';
import '../../Utils/UpdateDetails.dart';





class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {



  Widget _buildBody() {
      return
        Scaffold(
          body:  ConstrainedBox(
            constraints: const BoxConstraints.expand(),
              child: Center(
                child: InkWell(
                  onTap: (){

                    ///Sign in wiht Google
                    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
                      setState(() {
                        currentUser.name = account!.displayName ?? "";
                        currentUser.userid = account.id;
                        updateDetailsToLocalStorage();
                      });
                    });
                    googleSignIn.signInSilently();

                    ///Navigate to home page after sign in
                    handleSignIn().then((value) => Get.off(const HomePage()));
                  },
                  child: SizedBox(
                    height: 500,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(logo,
                        width: 100,
                        height: 100),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Tap To Sign In",
                        style: subTitle,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}