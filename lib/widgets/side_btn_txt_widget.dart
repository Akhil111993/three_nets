import 'package:flutter/material.dart';

class SideButtonTxtWidget extends StatelessWidget {
  String text;
  Color color;

  SideButtonTxtWidget({
    required this.text,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: 20.0));
  }
}
