import 'package:flutter/material.dart';
// import 'package:linktree_manager/Auth/auth_serviece.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(28, 28, 28, 255),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(50),
        child: SizedBox(
          width: 250,
          child: FloatingActionButton.extended(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            elevation: 0,
            onPressed: () {
              print("object");
              signInWithGoogle();
            },
            label: const Text(
              "Sign in with Google",
              style: TextStyle(
                  color: Color.fromARGB(255, 46, 44, 44), fontSize: 16),
            ),
            backgroundColor: Colors.white,
            icon: Image.asset(
              'assets/images/Google__G__Logo.svg.webp',
              width: 40,
              height: 32,
            ),
          ),
        ),
      ),
      body: const Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(100, 125, 100, 0),
              child: Image(
                image: AssetImage('assets/images/linktree.webp'),
                width: 200,
                height: 200,
              ),
            ),
          ),
          Text(
            "Linktree",
            style: TextStyle(
              fontSize: 37,
              color: Color.fromARGB(255, 69, 204, 94),
            ),
          ),
          Text(
            "Authentication",
            style: TextStyle(
              fontSize: 38,
              color: Color.fromARGB(255, 69, 204, 94),
            ),
          ),
        ],
      ),
    );
  }
}
