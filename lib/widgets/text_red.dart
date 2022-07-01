import 'package:flutter/material.dart';

class TextRed extends StatelessWidget {
  String text = '';
  TextRed(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.red,
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            )
          ],
        ),
      ],
    );
  }
}
