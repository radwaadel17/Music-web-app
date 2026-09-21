import 'package:flutter/material.dart';

class SizeConfig {
  static const double mobile = 800;
  static const double tablet = 1128 ;
  static const double desktop = 1281;
  static const double desktopError = 1420;

  static late double screenWidth, screenHeight;
  static init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
