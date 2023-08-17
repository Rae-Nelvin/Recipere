import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

enum Gender {
  male,
  female,
  others,
}

class GenderModalIcon extends StatelessWidget {
  final Gender value;
  final String title;
  final ValueChanged<Gender?> onChanged;
  final Gender groupValue;
  final bool isSelected;

  const GenderModalIcon({
    Key? key,
    required this.value,
    required this.title,
    required this.onChanged,
    required this.groupValue,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CustomButtonFactory.createButton(
          type: ButtonType.filled,
            width: 80,
            height: 80,
            color: CustomColors.secondary,
            verticalPadding: 8,
            borderRadius: 8,
            text: title,
            fontColor: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            onPressed: () {
              onChanged(value);
            },
          ).build()
        : CustomButtonFactory.createButton(
          type: ButtonType.outlined,
            width: 80,
            height: 80,
            color: CustomColors.primary,
            verticalPadding: 8,
            borderRadius: 8,
            text: title,
            fontColor: CustomColors.secondary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            onPressed: () {
              onChanged(value);
            },
          ).build();
  }
}

