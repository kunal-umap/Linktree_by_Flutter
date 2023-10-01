import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({
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
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
