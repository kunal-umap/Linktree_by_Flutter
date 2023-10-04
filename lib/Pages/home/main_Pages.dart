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

  // ignore: non_constant_identifier_names
  SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        print("Add Link clicked");
        break;
      case 1:
        print("Remove link clicked");
        break;
      case 2:
        print("Remove bar clicked");
        break;
    }
  }

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
              PopupMenuButton(
                color: const Color.fromARGB(255, 224, 218, 218),
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Add Link",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      "Remove link",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text(
                      "Remove bar",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
                onSelected: (item) {
                  SelectedItem(context, item);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
