import 'package:flutter/material.dart';

class GitHub extends StatelessWidget {
  const GitHub({
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
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(57, 56, 56, 1),
            ),
          ),
          onPressed: () {},
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              "assets/images/GitHub-PNG-Isolated-Photo.png",
              width: 50,
              height: 50,
              color: Colors.white,
            ),
            const Text(
              "GitHub",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
