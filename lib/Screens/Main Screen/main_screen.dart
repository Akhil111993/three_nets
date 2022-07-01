import 'package:flutter/material.dart';
import 'package:three_nets/Screens/Main%20Screen/screen2.dart';
import 'package:three_nets/Screens/Main%20Screen/screen3.dart';
import 'package:three_nets/Screens/Main%20Screen/screen4.dart';

import '../../app_bar.dart';
import '../../home_container.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const mainScreenRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomAppBar(),
          HomeContainer(),
          Screen2(),
          Screen3(),
          Screen4(),
        ],
      ),
    );
  }
}
