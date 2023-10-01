import 'package:flutter/material.dart';
import 'package:linktree_manager/Pages/home/GitHub.dart';
import 'package:linktree_manager/Pages/home/Instagram.dart';
import 'package:linktree_manager/Pages/home/Leetcode.dart';
import 'package:linktree_manager/Pages/home/Linkedin.dart';
import 'package:linktree_manager/Pages/home/Twitter.dart';
import 'package:linktree_manager/Pages/home/Youtube.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(28, 28, 28, 255),
      ),
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage("assets/images/Google__G__Logo.svg.webp"),
              width: 120,
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 40),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Add Description"),
              ),
            ),
            const Linkedin(),
            const Instagram(),
            const GitHub(),
            const Twitter(),
            const Leetcode(),
            const Youtube(),
          ],
        ),
      ),
    );
  }
}
