import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';

class BorderedCustomButton implements Button {
  final double width;
  final double height;
  final Color borderColor;
  final double verticalPadding;
  final double borderRadius;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final String? icon;
  final VoidCallback onPressed;

  const BorderedCustomButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.borderColor,
      required this.verticalPadding,
      required this.borderRadius,
      required this.text,
      required this.fontColor,
      required this.fontWeight,
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
            Text(
              text,
              style: TextStyle(
                color: fontColor,
                fontWeight: fontWeight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
