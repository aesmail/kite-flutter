import 'package:flutter/material.dart';

class KiteColor {
  // these color codes are from the kite.css file lines 23-31
  // link: https://kite.kagi.com/static/kite.css?1741700430
  static const int topicColor1 = 0xFFCC3333;
  static const int topicColor2 = 0xFFB85C2E;
  static const int topicColor3 = 0xFF0077CC;
  static const int topicColor4 = 0xFF666633;
  static const int topicColor5 = 0xFF8822CC;
  static const int topicColor6 = 0xFFB8288F;
  static const int topicColor7 = 0xFFE60039;
  static const int topicColor8 = 0xFF00855A;
  static const int topicColor9 = 0xFFD14900;

  static Color getTopicColor(String topic) {
    int topicNumber =
        ((topic.codeUnits.first + topic.codeUnits[1] + topic.length) % 9) + 1;
    switch (topicNumber) {
      case 1:
        return Color(topicColor1);
      case 2:
        return Color(topicColor2);
      case 3:
        return Color(topicColor3);
      case 4:
        return Color(topicColor4);
      case 5:
        return Color(topicColor5);
      case 6:
        return Color(topicColor6);
      case 7:
        return Color(topicColor7);
      case 8:
        return Color(topicColor8);
      case 9:
        return Color(topicColor9);
      default:
        return Color(topicColor1);
    }
  }
}
