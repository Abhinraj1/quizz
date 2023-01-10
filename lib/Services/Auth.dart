import 'package:google_sign_in/google_sign_in.dart';


/// Google sign in
GoogleSignIn googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
  ],
);

Future<void> handleSignIn() async {
  try {
    await googleSignIn.signIn();
  } catch (error) {
    print(error);
  }
}

/// Sign out
Future<void> signOut() => googleSignIn.disconnect();