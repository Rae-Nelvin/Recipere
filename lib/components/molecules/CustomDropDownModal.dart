import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownModal<T> extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const CustomDropDownModal({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final modalHeight = screenHeight * 0.8;

    return Container(
      height: modalHeight,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: CustomColors.primary,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 24, // Adjust the spacing between items
                runSpacing: 24, // Adjust the spacing between rows
                children: items,
              ),
            ),
          ),
          const SizedBox(height: 80),
          CustomButtonFactory.createButton(type: ButtonType.filled, color: CustomColors.secondary, width: 153, height: 40, verticalPadding: 8, borderRadius: 16, text: "Continue", fontColor: Colors.white, fontWeight: FontWeight.w600, fontSize: 16, onPressed: () {}).build(),
        ],
      ),
    );
  }
}
