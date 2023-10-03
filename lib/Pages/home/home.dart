import 'package:flutter/material.dart';
import 'package:linktree_manager/Pages/home/main_Pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/4e091d12f70ae25bad9e51226087b82f.jpg"),
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
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Image(
                      image:
                          AssetImage("assets/images/Google__G__Logo.svg.webp"),
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Your name",
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 40),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Write something about yourself",
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )),
                  main_Pages(
                    image:
                        "assets/images/linkedin-logo-linkedin-icon-transparent-free-png.webp",
                    label: "Linkedin",
                    color: Colors.blue,
                  ),
                  main_Pages(
                    image: "assets/images/GitHub-PNG-Isolated-Photo.png",
                    label: "GitHub",
                    color: const Color.fromARGB(57, 56, 56, 1),
                  ),
                  main_Pages(
                    image: "assets/images/580b57fcd9996e24bc43c521.png",
                    label: "Instagram",
                    color: const Color.fromARGB(255, 204, 18, 120),
                  ),
                  main_Pages(
                    image: "assets/images/LeetCode_Logo_1.png",
                    label: "Leetcode",
                    color: const Color.fromRGBO(170, 116, 31, 1),
                  ),
                  main_Pages(
                    image: "assets/images/580b57fcd9996e24bc43c53e.png",
                    label: "Twitter",
                    color: const Color.fromRGBO(13, 165, 231, 1),
                  ),
                  main_Pages(
                    image: "assets/images/youtube-logo-png-photo-0.png",
                    label: "Youtube",
                    color: const Color.fromRGBO(179, 34, 34, 1),
                  ),
                  main_Pages(
                    image:
                        "assets/images/photos-facebook-logo-png-transparent-background-13.png",
                    label: "Facebook",
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
