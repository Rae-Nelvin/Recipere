import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomSectionButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const CustomSectionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: CustomColors.black,
          ),
          const SizedBox(width: 17),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
