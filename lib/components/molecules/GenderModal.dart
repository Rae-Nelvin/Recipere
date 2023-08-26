import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

enum Genders { male, female, others }

Map<Genders, String> genderDisplayNames = {
  Genders.male: "Male",
  Genders.female: "Female",
  Genders.others: "Others",
};

class GenderModal extends StatefulWidget {
  final void Function(Genders) onGenderSelected;
  final Genders? selectedGender;

  const GenderModal({required this.onGenderSelected, this.selectedGender});

  @override
  State<GenderModal> createState() =>
      _GenderModalState(selectedGender: selectedGender);
}

class _GenderModalState extends State<GenderModal> {
  Genders _selectedGender;

  _GenderModalState({required Genders? selectedGender})
      : _selectedGender = selectedGender ?? Genders.male;

  void handleGenderSelection(Genders selectedGender) {
    setState(() {
      _selectedGender = selectedGender;
    });
  }

  Widget CustomGenderModal(String text, IconData icon, Genders gender) {
    return CustomButton(
        width: 80,
        height: 80,
        backgroundColor:
            (_selectedGender == gender) ? CustomColors.secondary : Colors.white,
        borderColor: (_selectedGender == gender)
            ? Colors.transparent
            : CustomColors.secondary,
        verticalPadding: 8,
        borderRadius: 16,
        icon: icon,
        iconSize: 36,
        text: text,
        fontColor:
            (_selectedGender == gender) ? Colors.white : CustomColors.secondary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        onPressed: () {
          setState(() {
            _selectedGender = gender;
            widget.onGenderSelected(
                gender); // Call the callback to update the parent
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 24,
        children: <Widget>[
          CustomGenderModal("Male", MaterialSymbols.male, Genders.male),
          CustomGenderModal("Female", MaterialSymbols.female, Genders.female),
          CustomGenderModal(
              "Others", MaterialSymbols.transgender, Genders.others),
        ],
      ),
    );
  }
}
