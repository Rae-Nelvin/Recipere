import 'package:flutter/material.dart';

class CustomColors {
  static const Color primary = Color.fromARGB(255, 79, 14, 14);
  static const Color secondary = Color.fromARGB(255, 187, 135, 96);
  static const Color tertiary = Color.fromARGB(255, 215, 115, 113);
  static const Color quartenary = Color.fromARGB(255, 255, 235, 201);
  static const Color gray = Color.fromARGB(255, 196, 196, 196);

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
