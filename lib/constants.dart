import 'package:flutter/material.dart';

const TextStyle kHeadingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30.0,
);

const TextStyle kNormalTextStyle =
    TextStyle(color: Colors.white, fontSize: 20.0);

const TextStyle kBigTextStyle =
    TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0, color: Colors.white);

OutlineInputBorder kLoginNormalBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Colors.grey.shade300,
  ),
);

OutlineInputBorder kLoginFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Colors.red,
    ));
