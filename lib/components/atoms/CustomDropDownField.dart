import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/molecules/GenderModal.dart';
import 'package:recipere/components/molecules/CustomDropDownModal.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownField<T> extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final String modalTitle;
  final Widget items;
  final T? value;

  const CustomDropDownField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.modalTitle,
    required this.items,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModal(context);
      },
      child: Container(
        width: 366,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: CustomColors.quartenary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: CustomColors.secondary,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value != null ? genderDisplayNames[value]! : hintText,
                    style: const TextStyle(
                      color: CustomColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    MaterialSymbols.arrow_drop_down_filled,
                    size: 16,
                    color: CustomColors.secondary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showModal(BuildContext context) async {
    await showModalBottomSheet<T>(
      context: context,
      builder: (BuildContext context) {
        return CustomDropDownModal<T>(
          title: modalTitle,
          items: items,
        );
      },
    );
  }
}
