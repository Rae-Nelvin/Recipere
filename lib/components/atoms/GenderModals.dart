import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

enum Gender { male, female, others }

class GenderModals extends StatefulWidget {
  const GenderModals({super.key});

  @override
  State<GenderModals> createState() => _GenderModalsState();
}

class _GenderModalsState extends State<GenderModals> {
  Gender _selectedGender = Gender.male;

  void handleGenderSelection(Gender selectedGender) {
    setState(() {
      _selectedGender = selectedGender;
    });
  }

  Widget CustomGenderModal(String text, IconData icon, Gender gender) {
    return CustomButtonFactory.createButton(
        type: (_selectedGender == gender) ? ButtonType.filled : ButtonType.outlined,
        width: 80,
        height: 80,
        borderRadius: 16,
        verticalPadding: 8,
        color: CustomColors.secondary,
        icon: icon,
        iconSize: 36,
        text: text,
        fontColor: (_selectedGender == gender) ? Colors.white : CustomColors.secondary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        onPressed: () {
          setState(() {
            _selectedGender = gender;
          });
        }).build();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 24,
          children: <Widget>[
          CustomGenderModal("Male", MaterialSymbols.male, Gender.male),
          CustomGenderModal("Female", MaterialSymbols.female, Gender.female),
          CustomGenderModal("Others", MaterialSymbols.transgender, Gender.others),
        ]
        ),
      ),
    );
  }
}
