import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;
  const CustomLinearProgressIndicator({
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 193,
      child: LinearProgressIndicator(
        value: value,
        color: CustomColors.golden,
      ),
    );
  }
}
