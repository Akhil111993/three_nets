import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  String text;
  Function() function;
  AppBarButton({required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.grey),
      ),
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
