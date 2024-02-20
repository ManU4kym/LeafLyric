import 'package:flutter/material.dart';

class TextWidg extends StatefulWidget {
  final String text;
  const TextWidg({super.key, required this.text});

  @override
  State<TextWidg> createState() => _TextWidgState();
}

class _TextWidgState extends State<TextWidg> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        height: 45,
        width: 75,
        decoration: BoxDecoration(
          color: isClicked
              ? const Color.fromARGB(194, 42, 231, 183)
              : const Color.fromARGB(255, 244, 244, 244),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(widget.text),
        ),
      ),
    );
  }
}
