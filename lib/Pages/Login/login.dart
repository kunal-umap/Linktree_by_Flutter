import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(28, 28, 28, 255),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(86),
        child: SizedBox(
          width: 250,
          child: FloatingActionButton.extended(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            elevation: 0,
            onPressed: () {},
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
          Padding(
            padding: EdgeInsets.fromLTRB(100, 240, 100, 0),
            child: Image(
              image: AssetImage('assets/images/linktree.webp'),
              width: 200,
              height: 200,
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
