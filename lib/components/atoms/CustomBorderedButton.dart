import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';

class CustomBorderedButton implements Button {
  final double width;
  final double height;
  final Color borderColor;
  final double verticalPadding;
  final double borderRadius;
  final String? icon;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onPressed;

  const CustomBorderedButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.borderColor,
      required this.verticalPadding,
      required this.borderRadius,
      required this.text,
      required this.fontColor,
      required this.fontWeight,
      required this.fontSize,
      required this.onPressed,
      this.icon});

  @override
  Widget build() {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Image.asset(
                icon!,
                width: 20,
                height: 20,
              ),
            if (icon != null)
              const SizedBox(
                width: 8,
              ),
            Flexible(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: fontColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
