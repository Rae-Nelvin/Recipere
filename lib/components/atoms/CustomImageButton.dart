import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String backgroundImage;
  final double width;
  final double height;
  final Alignment contentAlignment;
  final double borderRadius;
  final Color? overlayColor;
  final Widget texts;
  final EdgeInsets textPadding;
  final VoidCallback onTap;

  CustomImageButton({
    required this.backgroundImage,
    required this.width,
    required this.height,
    required this.contentAlignment,
    required this.borderRadius,
    this.overlayColor,
    required this.texts,
    required this.textPadding,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: contentAlignment,
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
          if (overlayColor != null)
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    overlayColor!.withOpacity(0.7),
                    overlayColor!.withOpacity(0.3),
                  ],
                ),
              ),
            ),
          Padding(padding: textPadding, child: texts),
        ],
      ),
    );
  }
}
