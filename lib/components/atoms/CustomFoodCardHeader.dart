import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

class CustomFoodCardHeader extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final Color color;
  final IconData? leftIcon;
  final String? leftText;

  const CustomFoodCardHeader({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.color,
    this.leftIcon,
    this.leftText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              color,
            ],
            stops: const [0.3, 1.0],
          )),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (leftIcon != null)
                Icon(
                  leftIcon,
                  color: Colors.white,
                  size: 20,
                ),
              if (leftText != null) const SizedBox(width: 4),
              if (leftText != null)
                Text(
                  leftText!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
            ],
          ),
        ),
        const Positioned(
          bottom: 8,
          right: 8,
          child: Icon(
            MaterialSymbols.bookmark,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
