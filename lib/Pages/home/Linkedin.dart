import 'package:flutter/material.dart';

class Linkedin extends StatelessWidget {
  const Linkedin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 600,
        height: 60,
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  "assets/images/linkedin-logo-linkedin-icon-transparent-free-png.webp",
                  width: 60,
                  height: 60,
                ),
              ),
              const Text(
                "Linkedln",
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
