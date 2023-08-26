import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownModal<T> extends StatelessWidget {
  final String title;
  final Widget items;

  const CustomDropDownModal({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: CustomColors.primary,
              ),
            ),
            const SizedBox(height: 34),
            items,
            const SizedBox(height: 50),
            CustomButton(
                width: 153,
                height: 40,
                backgroundColor: CustomColors.secondary,
                borderColor: Colors.transparent,
                verticalPadding: 8,
                borderRadius: 16,
                text: "Continue",
                fontColor: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
