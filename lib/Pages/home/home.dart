import 'package:flutter/material.dart';

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
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 600,
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/linkedin-logo-linkedin-icon-transparent-free-png.webp",
                    width: 60,
                    height: 60,
                  ),
                  label: const Text(
                    "Linkedln",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 600,
                height: 60,
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(226, 15, 210, 1),
                    ),
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/580b57fcd9996e24bc43c521.png",
                    width: 40,
                    height: 40,
                  ),
                  label: const Text(
                    "Instagram",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 600,
                height: 60,
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(57, 56, 56, 1),
                    ),
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/GitHub-PNG-Isolated-Photo.png",
                    width: 50,
                    height: 50,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "GitHub",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
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
            ),
            Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 600,
                height: 57,
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(179, 34, 34, 1),
                    ),
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/youtube-logo-png-photo-0.png",
                    width: 80,
                    height: 100,
                  ),
                  label: const Text(
                    "Youtube",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
