

import '../Constants/Constants.dart';



/// Upload user data to firebase
updateDetailsToLocalStorage(){
  user.write("user", currentUser.toMap());
}