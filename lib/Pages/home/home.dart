import 'package:flutter/material.dart';
import 'package:linktree_manager/Pages/home/facebook.dart';
import 'package:linktree_manager/Pages/home/gitHub.dart';
import 'package:linktree_manager/Pages/home/instagram.dart';
import 'package:linktree_manager/Pages/home/leetcode.dart';
import 'package:linktree_manager/Pages/home/linkedin.dart';
import 'package:linktree_manager/Pages/home/twitter.dart';
import 'package:linktree_manager/Pages/home/youtube.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/f454f75292f93e2b6c66846a857edf44.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Image(
                      image:
                          AssetImage("assets/images/Google__G__Logo.svg.webp"),
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Your Name",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 40),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add something about yourself",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Linkedin(),
                  const Instagram(),
                  const GitHub(),
                  const Twitter(),
                  const Leetcode(),
                  const Youtube(),
                  const Facebook(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
