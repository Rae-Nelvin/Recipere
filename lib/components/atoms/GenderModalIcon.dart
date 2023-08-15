import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class GenderModalIcon extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelected;

  const GenderModalIcon(
      {super.key,
      required this.icon,
      required this.title,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return CustomButtonFactory.createButton(
            type: isSelected ? ButtonType.filled : ButtonType.outlined,
            width: 80,
            height: 80,
            verticalPadding: 8,
            borderRadius: 8,
            color: CustomColors.secondary,
            text: title,
            fontColor: isSelected ? Colors.white : CustomColors.secondary,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            onPressed: () {})
        .build();
  }
}
