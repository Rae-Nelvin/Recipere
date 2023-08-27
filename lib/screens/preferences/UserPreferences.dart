import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomDropDownField.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/FavoriteDishesModal.dart';
import 'package:recipere/components/molecules/GenderModal.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/DishType.dart';
import 'package:recipere/screens/home/HomeScreen.dart';

class UserPreferences extends StatefulWidget {
  const UserPreferences();

  @override
  _UserPreferencesState createState() => _UserPreferencesState();
}

class _UserPreferencesState extends State<UserPreferences> {
  Genders _selectedGender = Genders.male;
  List<DishType> _selectedDishes = [];

  void _handleGenderSelected(Genders selectedGender) {
    setState(() {
      _selectedGender = selectedGender;
    });
  }

  void _handleDishSelected(DishType selectedDish) {
    setState(() {
      if (_selectedDishes.contains(selectedDish)) {
        _selectedDishes.remove(selectedDish);
      } else {
        _selectedDishes.add(selectedDish);
      }
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
                    cornerRadius: 8,
                    icon: MaterialSymbols.person_pin,
                    hintText: "Nickname",
                    fontWeight: FontWeight.w500,
                    isPassword: false,
                    boxColor: CustomColors.quartenary,
                    fontColor: CustomColors.secondary,
                  ),
                  const SizedBox(height: 16),
                  CustomDropDownField<Genders>(
                    key: UniqueKey(),
                    icon: MaterialSymbols.transgender,
                    hintText: 'Gender',
                    modalTitle: "Select Your Gender",
                    items: GenderModal(
                      onGenderSelected: _handleGenderSelected,
                      selectedGender: _selectedGender, // Pass selected gender
                    ),
                    value: _selectedGender,
                  ),
                  const SizedBox(height: 16),
                  CustomDropDownField(
                    icon: MaterialSymbols.restaurant_filled,
                    hintText: "Favorite Dish",
                    modalTitle: "Categories",
                    items: FavoriteDishesModal(
                      onDishSelected: _handleDishSelected,
                      selectedDishes: _selectedDishes,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              CustomButton(
                  width: 121,
                  height: 35,
                  backgroundColor: CustomColors.secondary,
                  borderColor: Colors.transparent,
                  verticalPadding: 5,
                  borderRadius: 8,
                  text: "Save",
                  fontColor: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    print(_selectedGender);
                    print(_selectedDishes);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
