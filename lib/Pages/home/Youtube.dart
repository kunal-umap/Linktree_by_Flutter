import 'package:flutter/material.dart';

class Youtube extends StatelessWidget {
  const Youtube({
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
              Color.fromRGBO(179, 34, 34, 1),
            ),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/youtube-logo-png-photo-0.png",
            width: 60,
            height: 60,
          ),
          label: const Text(
            "Youtube",
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
