import 'package:flutter/material.dart';

import '../constants.dart';

class SizedBoxWithTwoText extends StatelessWidget {
  String heading;
  String desc;
  SizedBoxWithTwoText({required this.heading, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 160.0,
        ),
        Text(
          heading,
          style: kBigTextStyle,
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          desc,
          style: kNormalTextStyle,
        ),
      ],
    );
  }
}
