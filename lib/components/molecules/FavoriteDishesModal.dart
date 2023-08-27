import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/DishType.dart';

class FavoriteDishesModal extends StatefulWidget {
  final void Function(DishType selectedDish) onDishSelected;
  final List<DishType>? selectedDishes;

  const FavoriteDishesModal(
      {super.key, required this.onDishSelected, this.selectedDishes});

  @override
  State<FavoriteDishesModal> createState() =>
      _FavoriteDishesModalState(selectedDishes: selectedDishes);
}

class _FavoriteDishesModalState extends State<FavoriteDishesModal> {
  List<DishType> _selectedDishes;

  _FavoriteDishesModalState({required List<DishType>? selectedDishes})
      : _selectedDishes =
            selectedDishes ?? DishType.fromJsonList(dishTypeLists);

  final List<DishType> lists = DishType.fromJsonList(dishTypeLists);

  Widget CustomFavoriteDishesModal(DishType dish) {
    return Container(
      width: 129,
      height: 163,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: dish.isSelected == true
              ? CustomColors.primary
              : Colors.transparent,
          width: 2,
        ),
      ),
      child: CustomImageButton(
        backgroundImage: dish.backgroundImage,
        width: 129,
        height: 163,
        contentAlignment: Alignment.center,
        borderRadius: 16,
        overlayColor: dish.overlayColor,
        textAlignment: MainAxisAlignment.center,
        textLists: [
          Text(
            dish.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: dish.overlayColor == CustomColors.primary
                  ? Colors.white
                  : CustomColors.primary,
              fontSize: 16,
            ),
          ),
        ],
        textPadding: const EdgeInsets.all(0),
        onTap: () {
          setState(() {
            dish.isSelected = !dish.isSelected;
            widget.onDishSelected(dish);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 20,
            spacing: 20,
            children: <Widget>[
              for (var data in lists) CustomFavoriteDishesModal(data)
            ],
          )),
    );
  }
}
