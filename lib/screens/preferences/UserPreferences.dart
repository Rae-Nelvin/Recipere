import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/molecules/CustomDropDownField.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/GenderModals.dart';
import 'package:recipere/configs/CustomColors.dart';

class UserPreferences extends StatefulWidget {
  const UserPreferences();

  @override
  _UserPreferencesState createState() => _UserPreferencesState();
}

class _UserPreferencesState extends State<UserPreferences> {
  Gender _selectedGender = Gender.male;

  void _handleGenderSelected(Gender selectedGender) {
    setState(() {
      _selectedGender = selectedGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/icons/app-icon.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  const CustomTextFormField(
                    icon: MaterialSymbols.person_pin,
                    hintText: "Nickname",
                    isPassword: false,
                  ),
                  const SizedBox(height: 16),
                  CustomDropDownField<Gender>(
                    key: UniqueKey(),
                    icon: MaterialSymbols.transgender,
                    hintText: 'Gender',
                    modalTitle: "Select Your Gender",
                    items: GenderModals(
                      onGenderSelected: _handleGenderSelected,
                      selectedGender: _selectedGender, // Pass selected gender
                    ),
                    value: _selectedGender,
                  ),
                  const SizedBox(height: 16),
                  const CustomTextFormField(
                    icon: MaterialSymbols.restaurant_filled,
                    hintText: "Favorite Dish",
                    isPassword: false,
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  CustomButton(
                      width: 366,
                      height: 43,
                      backgroundColor: CustomColors.secondary,
                      borderColor: Colors.transparent,
                      verticalPadding: 10,
                      borderRadius: 8,
                      text: "Save",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
