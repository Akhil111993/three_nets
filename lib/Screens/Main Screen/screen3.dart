import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:three_nets/constants.dart';
import 'package:three_nets/enums/icon_data.dart';

import '../../iconClickBrain.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  IconClickBrain _iconClickBrain = IconClickBrain(IconsData.athenahealth);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 50.0,
        right: 50.0,
        bottom: 60.0,
      ),
      height: 650.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _iconClickBrain = IconClickBrain(IconsData.athenahealth);
                  });
                },
                child: SvgPicture.asset('images/athenahealth_logo.svg'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() =>
                      _iconClickBrain = IconClickBrain(IconsData.decathlon));
                },
                child: SvgPicture.asset('images/decathlon_logo.svg'),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                      () => _iconClickBrain = IconClickBrain(IconsData.github));
                },
                child: SvgPicture.asset('images/github_logo.svg'),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                      () => _iconClickBrain = IconClickBrain(IconsData.cruice));
                },
                child: SvgPicture.asset('images/cruise_logo.svg'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() =>
                      _iconClickBrain = IconClickBrain(IconsData.pandora));
                },
                child: SvgPicture.asset('images/pandora_logo.svg'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() =>
                      _iconClickBrain = IconClickBrain(IconsData.ubisoft));
                },
                child: SvgPicture.asset('images/ubisoft_logo.svg'),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      _iconClickBrain.getHeading(),
                      style: kHeadingStyle,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SvgPicture.asset(
                      _iconClickBrain.getIcon(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: Image.asset(
                  _iconClickBrain.getImage(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
