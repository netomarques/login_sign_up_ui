import 'package:flutter/material.dart';

class TextFieldTitle extends StatelessWidget {
  const TextFieldTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.black,
        fontSize: 20.0,
      ),
    );
  }
}
