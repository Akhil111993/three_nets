import 'package:flutter/material.dart';

class DocScreen extends StatelessWidget {
  DocScreen({Key? key}) : super(key: key);
  static const docScreenRoute = 'docs';
  static bool isUserNull = true;

  @override
  Widget build(BuildContext context) {
    // if (isUserNull) {
    //todo uncommand
    // return const Scaffold(body: Text('User not Authorized'));
    // }
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              color: Colors.red,
            )
            // Container(
            //   color: Colors.grey[350],
            //   width: 300.0,
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 120.0,
            //         width: double.infinity,
            //         color: Colors.red,
            //         alignment: Alignment.center,
            //         child: const Text(
            //           '3nets.io',
            //           style: kBigTextStyle,
            //         ),
            //       ),
            //       TextRed('Mission'),
            //       TextRed('Infrastructure for Cloud Era'),
            //       TextRed('Current Infrastructure'),
            //       TextRed('Strategically placing \nSoftware appliances'),
            //     ],
            //   ),
            // ),
            // Expanded(
            //     child: Container(
            //   color: Colors.blue,
            // )),
          ],
        ),
      ),
    );
  }
}
