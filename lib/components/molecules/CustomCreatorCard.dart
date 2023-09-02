import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomCreatorCard extends StatelessWidget {
  final String image;
  final String username;
  final String name;
  final VoidCallback onPressed;

  const CustomCreatorCard({
    super.key,
    required this.image,
    required this.username,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 96,
            height: 96,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "@$username",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: CustomColors.primary,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                MaterialSymbols.verified_filled,
                color: CustomColors.blue,
                size: 12,
              ),
            ],
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: CustomColors.primary,
                fontSize: 12),
          ),
          const SizedBox(height: 8),
          CustomButton(
              width: 96,
              height: 24,
              backgroundColor: CustomColors.primary,
              borderColor: Colors.transparent,
              verticalPadding: 0,
              borderRadius: 16,
              text: "Follow",
              fontColor: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              onPressed: onPressed),
        ],
      ),
    );
  }
}
