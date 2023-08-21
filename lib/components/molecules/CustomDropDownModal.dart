import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/GenderModals.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownModal<T> extends StatelessWidget {
  final String title;
  final Widget items;
  final void Function(Gender) onGenderSelected;
  final Gender? selectedGender; // Add this line

  const CustomDropDownModal({required this.title, required this.items, required this.onGenderSelected, this.selectedGender});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final modalHeight = screenHeight * 1;

    return Container(
      height: modalHeight,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 19),
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
            const SizedBox(height: 64),
            items,
            const SizedBox(height: 80),
            CustomButtonFactory.createButton(
                    type: ButtonType.filled,
                    color: CustomColors.secondary,
                    width: 153,
                    height: 40,
                    verticalPadding: 8,
                    borderRadius: 16,
                    text: "Continue",
                    fontColor: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    onPressed: () {
                      onGenderSelected(selectedGender!); // Pass the selected gender
                      Navigator.pop(context); // Close modal
                    })
                .build(),
          ],
        ),
      ),
    );
  }
}
