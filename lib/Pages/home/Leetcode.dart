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
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(170, 116, 31, 1),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/LeetCode_Logo_1.png",
                width: 40,
                height: 40,
              ),
              const Text(
                "LeetCode",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
