// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class main_Pages extends StatefulWidget {
  String image;
  String label;
  Color color;
  main_Pages(
      {super.key,
      required this.image,
      required this.label,
      required this.color});

  @override
  State<main_Pages> createState() => _main_PagesState();
}

// ignore: camel_case_types
class _main_PagesState extends State<main_Pages> {
  bool isVisible = false;
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
    var popupManu = PopupMenuButton(
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
    );
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 600,
        height: 70,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(widget.color),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  widget.image,
                  width: 60,
                  height: 60,
                ),
              ),
              Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(
                    const Size(60, 60),
                  ),
                  child: popupManu,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tight(
                  const Size(60, 60),
                ),
                child: MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
