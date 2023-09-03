import 'package:flutter/material.dart';

class CustomColors {
  static const Color primary = Color.fromARGB(255, 79, 14, 14);
  static const Color secondary = Color.fromARGB(255, 187, 135, 96);
  static const Color tertiary = Color.fromARGB(255, 215, 115, 113);
  static const Color quartenary = Color.fromARGB(255, 255, 235, 201);
  static const Color pentatenary = Color.fromARGB(255, 155, 109, 74);
  static const Color gray = Color.fromARGB(255, 196, 196, 196);
  static const Color white = Color.fromARGB(255, 244, 244, 244);
  static const Color golden = Color.fromARGB(255, 252, 196, 37);
  static const Color blue = Color.fromARGB(255, 56, 151, 240);
  static const Color black = Color.fromARGB(255, 67, 67, 67);
  static const Color brown = Color.fromARGB(255, 255, 248, 242);

  static Color parseOverlayColor(String colorString) {
    switch (colorString) {
      case 'primary':
        return CustomColors.primary;
      case 'secondary':
        return CustomColors.secondary;
      case 'tertiary':
        return CustomColors.tertiary;
      case 'quartenary':
        return CustomColors.quartenary;
      case 'gray':
        return CustomColors.gray;
      default:
        return Colors.transparent;
    }
  }
}
