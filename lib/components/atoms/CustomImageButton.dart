import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String backgroundImage;
  final double width;
  final double height;
  final double borderRadius;
  final Color overlayColor;
  final String text;
  final Color fontColor;
  final VoidCallback onTap;

  CustomImageButton(
      {required this.backgroundImage,
      required this.width,
      required this.height,
      required this.borderRadius,
      required this.overlayColor,
      required this.text,
      required this.fontColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.asset(
              backgroundImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  overlayColor.withOpacity(0.7),
                  overlayColor.withOpacity(0.3),
                ],
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
