import '../Constants/Constants.dart';
import '../Model/UserModel.dart';


///Check whether the user has already logged in or not
checkUserAuthFromStorage(){
 if(user.read("user") != null) {
    currentUser = UserModel.fromJson(user.read("user"));
  }



}