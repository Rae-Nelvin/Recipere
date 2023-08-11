import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';

class CustomTextButton implements Button {
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onPressed;

  const CustomTextButton(
      {Key? key,
      required this.text,
      required this.fontColor,
      required this.fontWeight,
      required this.fontSize,
      required this.onPressed});

  @override
  Widget build() {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: fontColor, fontWeight: fontWeight, fontSize: fontSize),
      ),
    );
  }
}
