import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomFoodCard extends StatelessWidget {
  final double width;
  final double borderRadius;
  final CustomFoodCardHeader header;
  final Widget descriptions;
  final VoidCallback onTap;

  const CustomFoodCard({
    Key? key,
    required this.width,
    required this.borderRadius,
    required this.header,
    required this.descriptions,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        splashColor: CustomColors.white,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              header,
              descriptions,
            ],
          ),
        ),
      ),
    );
  }
}
