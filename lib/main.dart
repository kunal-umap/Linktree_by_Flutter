import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:linktree_manager/Pages/Login/login.dart';
=======
//import 'package:linktree_manager/Pages/Login/login.dart';
import 'package:linktree_manager/Pages/home/home.dart';
>>>>>>> 70cc6080c489ae5931193f94af1806788388e286

void main() {
  runApp(const LinkTreeManager());
}

class LinkTreeManager extends StatelessWidget {
  const LinkTreeManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
