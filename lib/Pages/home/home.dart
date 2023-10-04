import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linktree_manager/Pages/home/main_Pages.dart';
import 'package:linktree_manager/Pages/home/utilis.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Uint8List? _image;

  void selectimage() async {
    Uint8List img = await pickimage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Stack(
                      children: [
                        _image != null
                            ? GestureDetector(
                                onTap: () {
                                  selectimage();
                                },
                                child: CircleAvatar(
                                  radius: 64,
                                  backgroundImage: MemoryImage(_image!),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  selectimage();
                                },
                                child: const CircleAvatar(
                                  radius: 64,
                                  backgroundImage: AssetImage(
                                      "assets/images/Default_pfp.svg.png"),
                                ),
                              )
                      ],
                    ),
                  ),
                  const Center(
                    child: TextField(
                      style: TextStyle(
                        fontFamily: "Playfair Display",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your name",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const TextField(
                    style: TextStyle(
                      fontFamily: "Playfair Display",
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write something about yourself",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
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
