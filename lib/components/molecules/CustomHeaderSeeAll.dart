import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomHeaderSeeAll extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomHeaderSeeAll(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: CustomColors.primary,
            fontSize: 24,
          ),
        ),
        CustomTextButton(
            text: "See All",
            fontColor: CustomColors.secondary,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            onPressed: onPressed),
      ],
    );
  }
}
