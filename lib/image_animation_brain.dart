import 'package:flutter/material.dart';
import 'package:three_nets/enums/icon_data.dart';

class ImageAnimationBrain {
  String imagePath = 'images/stack1.png';
  Color color = Colors.grey;
  ButtonsData buttonsData = ButtonsData.overview;

  ImageAnimationBrain(this.buttonsData);

  String getImagePath() {
    if (buttonsData == ButtonsData.overview) {
      return 'images/stack1.png';
    } else if (buttonsData == ButtonsData.provision) {
      return 'images/stack2.png';
    } else if (buttonsData == ButtonsData.secure) {
      return 'images/stack3.png';
    } else if (buttonsData == ButtonsData.connect) {
      return 'images/stack4.png';
    } else {
      return 'images/stack5.png';
    }
  }
}
