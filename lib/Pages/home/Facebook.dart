import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 600,
        height: 60,
        child: ElevatedButton.icon(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(34, 131, 195, 1),
            ),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/photos-facebook-logo-png-transparent-background-13.png",
            width: 50,
            height: 50,
          ),
          label: const Text(
            "Facebook",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
