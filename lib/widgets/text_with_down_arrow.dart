import 'package:flutter/material.dart';

class TextWithDownArrow extends StatelessWidget {
  final String text;
  TextWithDownArrow(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10.0,
        ),
        const Icon(Icons.keyboard_arrow_down),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
