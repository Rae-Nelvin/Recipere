import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomProfileShortDesc extends StatelessWidget {
  final String profilePicture;
  final String name;
  final String job;
  final String email;

  const CustomProfileShortDesc({
    super.key,
    required this.profilePicture,
    required this.name,
    required this.job,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            profilePicture,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primary,
                  fontSize: 24),
            ),
            const Icon(
              MaterialSymbols.verified_filled,
              color: CustomColors.blue,
              size: 24,
            ),
          ],
        ),
        Text(
          job,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: CustomColors.black,
            fontSize: 16,
          ),
        ),
        Text(
          email,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: CustomColors.blue,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
