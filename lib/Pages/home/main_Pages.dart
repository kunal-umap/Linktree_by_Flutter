// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class main_Pages extends StatelessWidget {
  String image;
  String label;
  Color color;
  main_Pages(
      {super.key,
      required this.image,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 600,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  image,
                  width: 60,
                  height: 60,
                ),
              ),
              Text(
                label,
                style: const TextStyle(
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
