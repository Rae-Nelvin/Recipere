import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final double verticalPadding;
  final double borderRadius;
  final String? image;
  final IconData? icon;
  final double? iconSize;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onPressed;

  const CustomButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.backgroundColor,
      required this.borderColor,
      required this.verticalPadding,
      required this.borderRadius,
      required this.text,
      required this.fontColor,
      required this.fontWeight,
      required this.fontSize,
      required this.onPressed,
      this.image,
      this.icon,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: iconSize,
                color: fontColor,
              ),
            if (image != null)
              Image.asset(
                image!,
                width: iconSize ?? 20,
                height: iconSize ?? 20,
              ),
            if (icon != null || image != null)
              const SizedBox(
                width: 8,
              ),
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
