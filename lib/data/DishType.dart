import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class DishType {
  final int id;
  final String name;
  final String backgroundImage;
  final Color overlayColor;
  bool isSelected;

  DishType(
    this.id,
    this.name,
    this.backgroundImage,
    this.overlayColor, {
    this.isSelected = false,
  });

  factory DishType.fromJson(Map<String, dynamic> json) {
    final int id = json['id'];
    final Color overlayColor =
        CustomColors.parseOverlayColor(json['overlayColor']);
    return DishType(id, json['name'], json['backgroundImage'], overlayColor);
  }

  static List<DishType> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => DishType.fromJson(json)).toList();
  }
}

const List<Map<String, dynamic>> dishTypeLists = [
  {
    "id": 1,
    "name": "Beverages",
    "backgroundImage": "lib/assets/backgrounds/dishes/beverages.png",
    "overlayColor": "primary",
  },
  {
    "id": 2,
    "name": "Snacks",
    "backgroundImage": "lib/assets/backgrounds/dishes/snacks.png",
    "overlayColor": "secondary",
  },
  {
    "id": 3,
    "name": "Halal",
    "backgroundImage": "lib/assets/backgrounds/dishes/halal.png",
    "overlayColor": "secondary",
  },
  {
    "id": 4,
    "name": "Sweets",
    "backgroundImage": "lib/assets/backgrounds/dishes/sweets.png",
    "overlayColor": "primary",
  },
  {
    "id": 5,
    "name": "Chicken & Duck",
    "backgroundImage": "lib/assets/backgrounds/dishes/chicken-and-duck.png",
    "overlayColor": "primary",
  },
  {
    "id": 6,
    "name": "Fast Food",
    "backgroundImage": "lib/assets/backgrounds/dishes/fast-food.png",
    "overlayColor": "secondary",
  },
  {
    "id": 7,
    "name": "Bakery",
    "backgroundImage": "lib/assets/backgrounds/dishes/bakery.png",
    "overlayColor": "secondary",
  },
  {
    "id": 8,
    "name": "Japanese",
    "backgroundImage": "lib/assets/backgrounds/dishes/japanese.png",
    "overlayColor": "secondary",
  },
  {
    "id": 9,
    "name": "Indonesian",
    "backgroundImage": "lib/assets/backgrounds/dishes/indonesian.png",
    "overlayColor": "secondary",
  },
  {
    "id": 10,
    "name": "Coffee",
    "backgroundImage": "lib/assets/backgrounds/dishes/coffee.png",
    "overlayColor": "secondary",
  },
  {
    "id": 11,
    "name": "Korean",
    "backgroundImage": "lib/assets/backgrounds/dishes/korean.png",
    "overlayColor": "secondary",
  },
  {
    "id": 12,
    "name": "Noodle",
    "backgroundImage": "lib/assets/backgrounds/dishes/noodle.png",
    "overlayColor": "primary",
  },
  {
    "id": 13,
    "name": "Italian",
    "backgroundImage": "lib/assets/backgrounds/dishes/italian.png",
    "overlayColor": "secondary",
  },
  {
    "id": 14,
    "name": "Chinese Food",
    "backgroundImage": "lib/assets/backgrounds/dishes/chinese-food.png",
    "overlayColor": "secondary",
  },
  {
    "id": 15,
    "name": "Western",
    "backgroundImage": "lib/assets/backgrounds/dishes/western.png",
    "overlayColor": "primary",
  },
  {
    "id": 16,
    "name": "Seafood",
    "backgroundImage": "lib/assets/backgrounds/dishes/seafood.png",
    "overlayColor": "secondary",
  },
  {
    "id": 17,
    "name": "Middle Eastern",
    "backgroundImage": "lib/assets/backgrounds/dishes/middle-eastern.png",
    "overlayColor": "secondary",
  },
  {
    "id": 18,
    "name": "Thai",
    "backgroundImage": "lib/assets/backgrounds/dishes/thai.png",
    "overlayColor": "secondary",
  },
  {
    "id": 19,
    "name": "Indian",
    "backgroundImage": "lib/assets/backgrounds/dishes/indian.png",
    "overlayColor": "secondary",
  },
  {
    "id": 20,
    "name": "Vegetarian",
    "backgroundImage": "lib/assets/backgrounds/dishes/vegetarian.png",
    "overlayColor": "primary",
  },
];
