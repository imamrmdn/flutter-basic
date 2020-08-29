import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double paddingTopItem;
  static double marginTopItem;
  static double marginHorizontal;
  static double sizeHorizontal;
  static double sizeHeightItem;
  static double safeBlokHorizontal;
  static double safeBlokVertical;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    marginHorizontal = screenWidth / 1.1;
    sizeHeightItem = screenHeight / 11;
    marginTopItem = screenHeight * 0.9;
    safeBlokHorizontal = (screenWidth - marginTopItem) / 100;
    safeBlokVertical = screenHeight * 0.1;
  }
}
