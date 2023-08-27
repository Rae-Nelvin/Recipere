import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomFoodCardDescriptionsWithStar extends StatelessWidget {
  final EdgeInsets padding;
  final String title;
  final String subtitle;
  final int stars;
  final double values;

  const CustomFoodCardDescriptionsWithStar({
    super.key,
    required this.padding,
    required this.title,
    required this.subtitle,
    required this.stars,
    required this.values,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColors.primary,
              fontSize: 16,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: CustomColors.primary,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 2),
              const Icon(
                MaterialSymbols.verified_filled,
                color: CustomColors.blue,
                size: 14,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  stars,
                  (index) => const Icon(
                    MaterialSymbols.star_filled,
                    color: CustomColors.golden,
                    size: 12,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                values.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: CustomColors.primary,
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
