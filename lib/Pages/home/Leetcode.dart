import 'package:flutter/material.dart';

class Leetcode extends StatelessWidget {
  const Leetcode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 600,
        height: 57,
        child: ElevatedButton.icon(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(255, 162, 15, 1),
            ),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/LeetCode_Logo_1.png",
            width: 40,
            height: 40,
          ),
          label: const Text(
            "LeetCode",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
