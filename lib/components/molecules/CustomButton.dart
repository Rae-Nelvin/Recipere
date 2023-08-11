import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/BorderedCustomButton.dart';
import 'package:recipere/components/atoms/FilledCustomButton.dart';

enum ButtonType {
  filled,
  outlined,
  text,
}

abstract class Button {
  Widget build();
}

class CustomButtonFactory {
  static Button createButton(
      ButtonType type,
      double width,
      double height,
      Color color,
      double verticalPadding,
      double borderRadius,
      String? icon,
      String text,
      FontWeight fontWeight,
      Color fontColor,
      VoidCallback onPressed) {
    switch (type) {
      case ButtonType.filled:
        return FilledCustomButton(
            width: width,
            height: height,
            backgroundColor: color,
            verticalPadding: verticalPadding,
            borderRadius: borderRadius,
            icon: icon,
            text: text,
            fontColor: fontColor,
            fontWeight: fontWeight,
            onPressed: onPressed);
      case ButtonType.outlined:
        return BorderedCustomButton(
            width: width,
            height: height,
            borderColor: color,
            verticalPadding: verticalPadding,
            borderRadius: borderRadius,
            icon: icon,
            text: text,
            fontColor: fontColor,
            fontWeight: fontWeight,
            onPressed: onPressed);
      default:
        throw ArgumentError('Invalid button type');
    }
  }
}
