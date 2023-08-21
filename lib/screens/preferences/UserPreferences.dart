import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomDropDownField.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/atoms/GenderModals.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class UserPreferences extends StatelessWidget {
  const UserPreferences({super.key});

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
              const Column(
                children: [
                  CustomTextFormField(
                    icon: MaterialSymbols.person_pin,
                    hintText: "Nickname",
                    isPassword: false,
                  ),
                  SizedBox(height: 16),
                  CustomDropDownField<String>(
                    icon: MaterialSymbols.transgender,
                    hintText: 'Gender',
                    modalTitle: "Select Your Gender",
                    items: GenderModals(),
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    icon: MaterialSymbols.restaurant_filled,
                    hintText: "Favorite Dish",
                    isPassword: false,
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  CustomButtonFactory.createButton(
                    type: ButtonType.filled,
                    width: 366,
                    height: 43,
                    color: CustomColors.secondary,
                    verticalPadding: 10,
                    borderRadius: 8,
                    text: "Simpan",
                    fontColor: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    onPressed: () {
                      // Implement your onPressed logic here
                    },
                  ).build(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
