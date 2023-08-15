import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomDropDownField.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/atoms/GenderModalIcon.dart';
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
                      icon: 'lib/assets/icons/nickname-icon.png',
                      hintText: "Nickname",
                      isPassword: false),
                  SizedBox(height: 16),
                  CustomDropDownField<String>(icon: 'lib/assets/icons/gender-icon.png', hintText: 'Gender', modalTitle: "Select Your Gender", items: [
                    GenderModalIcon(icon: 'icon_male.png', title: 'Male', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Female', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                    GenderModalIcon(icon: 'icon_male.png', title: 'Others', isSelected: false),
                  ]),
                  SizedBox(height: 16),
                  CustomTextFormField(
                      icon: 'lib/assets/icons/food-icon.png',
                      hintText: "Favorite Dish",
                      isPassword: false),
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
                      }).build(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}