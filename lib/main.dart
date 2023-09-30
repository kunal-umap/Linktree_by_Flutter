import 'package:flutter/material.dart';
import 'package:linktree_manager/Pages/home/home.dart';

void main() {
  runApp(const LinkTreeManager());
}

class LinkTreeManager extends StatelessWidget {
  const LinkTreeManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
