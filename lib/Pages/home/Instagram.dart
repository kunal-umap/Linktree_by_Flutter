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
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 249, 206, 52),
                Color.fromARGB(255, 238, 42, 123),
                Color.fromARGB(255, 98, 40, 215)
              ],
              // #f9ce34, #ee2a7b and #6228d7
            ),
          ),
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromRGBO(0, 0, 0, 0),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/580b57fcd9996e24bc43c521.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  "Instagram",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
