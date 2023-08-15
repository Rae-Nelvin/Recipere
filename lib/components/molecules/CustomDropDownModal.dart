import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownModal<T> extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const CustomDropDownModal({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final modalHeight = screenHeight * 1.5; // Adjust the percentage as needed

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
                spacing: 12, // Adjust the spacing between items
                runSpacing: 12, // Adjust the spacing between rows
                children: items,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
