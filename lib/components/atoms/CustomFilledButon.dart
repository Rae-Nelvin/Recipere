import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';

class CustomFilledButton implements Button {
  final double width;
  final double height;
  final Color backgroundColor;
  final double verticalPadding;
  final double borderRadius;
  final String? icon;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onPressed;

  const CustomFilledButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.backgroundColor,
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
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsetsDirectional.symmetric(vertical: verticalPadding),
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
            if (icon != null) const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                  color: fontColor, fontWeight: fontWeight, fontSize: fontSize),
            )
          ],
        ),
      ),
    );
  }
}
