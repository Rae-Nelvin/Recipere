import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomPaginationCircle extends StatelessWidget {
  final bool isActive;

  const CustomPaginationCircle({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 14 : 12,
      height: isActive ? 14 : 12,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : CustomColors.gray,
          shape: BoxShape.circle),
    );
  }
}
