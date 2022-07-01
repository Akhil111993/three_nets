import 'package:flutter/material.dart';
import 'package:three_nets/Models/text_list.dart';
import 'package:three_nets/constants.dart';
import 'package:three_nets/enums/icon_data.dart';
import 'package:three_nets/image_animation_brain.dart';
import 'package:three_nets/widgets/side_btn_txt_widget.dart';
import 'package:three_nets/widgets/sizedbox_text_text.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  ButtonsData _buttonsData = ButtonsData.overview;
  ImageAnimationBrain _imageAnimationBrain =
      ImageAnimationBrain(ButtonsData.overview);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      height: 800.0,
      color: Colors.black,
      child: Column(
        children: [
          const Text(
            'Our Products',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            'Delivering cloud infrastructure automation for operations, security, networking, and\napplication delivery',
            style: kNormalTextStyle,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imageAnimationBrain =
                              ImageAnimationBrain(ButtonsData.overview);
                          _buttonsData = ButtonsData.overview;
                        });
                      },
                      child: SideButtonTxtWidget(
                          text: 'Overview',
                          color: _buttonsData == ButtonsData.overview
                              ? Colors.white
                              : Colors.grey),
                    ),
                    const SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imageAnimationBrain =
                              ImageAnimationBrain(ButtonsData.provision);
                          _buttonsData = ButtonsData.provision;
                        });
                      },
                      child: SideButtonTxtWidget(
                          text: 'Provision',
                          color: _buttonsData == ButtonsData.provision
                              ? Colors.white
                              : Colors.grey),
                    ),
                    const SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imageAnimationBrain =
                              ImageAnimationBrain(ButtonsData.secure);
                          _buttonsData = ButtonsData.secure;
                        });
                      },
                      child: SideButtonTxtWidget(
                          text: 'Secure',
                          color: _buttonsData == ButtonsData.secure
                              ? Colors.white
                              : Colors.grey),
                    ),
                    const SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imageAnimationBrain =
                              ImageAnimationBrain(ButtonsData.connect);
                          _buttonsData = ButtonsData.connect;
                        });
                      },
                      child: SideButtonTxtWidget(
                          text: 'Connect',
                          color: _buttonsData == ButtonsData.connect
                              ? Colors.white
                              : Colors.grey),
                    ),
                    const SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imageAnimationBrain =
                              ImageAnimationBrain(ButtonsData.run);
                          _buttonsData = ButtonsData.run;
                        });
                      },
                      child: SideButtonTxtWidget(
                          text: 'Run',
                          color: _buttonsData == ButtonsData.run
                              ? Colors.white
                              : Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBoxWithTwoText(
                            heading: getHeadingFromList(0),
                            desc: getDescFromList(0),
                          ),
                          SizedBoxWithTwoText(
                            heading: getHeadingFromList(1),
                            desc: getDescFromList(1),
                          ),
                          SizedBoxWithTwoText(
                            heading: getHeadingFromList(0),
                            desc: getDescFromList(0),
                          ),
                          const SizedBox(
                            height: 160.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  _imageAnimationBrain.getImagePath(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
