import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomBorderedButton.dart';
import 'package:recipere/components/atoms/CustomFilledButon.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';

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
      {required ButtonType type,
      double? width,
      double? height,
      Color? color,
      double? verticalPadding,
      double? borderRadius,
      String? icon,
      required String text,
      required Color fontColor,
      required FontWeight fontWeight,
      required double fontSize,
      required VoidCallback onPressed}) {
    switch (type) {
      case ButtonType.filled:
        return CustomFilledButton(
            width: width ?? 0,
            height: height ?? 0,
            backgroundColor: color ?? Colors.white,
            verticalPadding: verticalPadding ?? 0,
            borderRadius: borderRadius ?? 0,
            icon: icon,
            text: text,
            fontColor: fontColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            onPressed: onPressed);
      case ButtonType.outlined:
        return CustomBorderedButton(
            width: width ?? 0,
            height: height ?? 0,
            borderColor: color ?? Colors.white,
            verticalPadding: verticalPadding ?? 0,
            borderRadius: borderRadius ?? 0,
            icon: icon,
            text: text,
            fontColor: fontColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            onPressed: onPressed);
      case ButtonType.text:
        return CustomTextButton(
            text: text,
            fontColor: fontColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            onPressed: onPressed);
      default:
        throw ArgumentError('Invalid button type');
    }
  }
}
