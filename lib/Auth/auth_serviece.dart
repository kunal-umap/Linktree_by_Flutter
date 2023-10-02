import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServ {
  signInWithGoogle() async {
    // Sign Process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //  Authentication details
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    // Create New Credential
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // Sign IN
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
