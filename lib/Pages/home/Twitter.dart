import 'package:flutter/material.dart';

class Twitter extends StatelessWidget {
  const Twitter({
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
              Color.fromRGBO(13, 165, 231, 1),
            ),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/580b57fcd9996e24bc43c53e.png",
            width: 40,
            height: 40,
            color: Colors.white,
          ),
          label: const Text(
            "Twitter",
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
