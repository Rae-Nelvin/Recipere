import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/GenderModals.dart';
import 'package:recipere/components/molecules/CustomDropDownModal.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDropDownField<T extends Gender> extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final String modalTitle;
  final GenderModals items;
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
  _CustomDropDownFieldState<T> createState() => _CustomDropDownFieldState<T>();
}

class _CustomDropDownFieldState<T extends Gender> extends State<CustomDropDownField<T>> {
  late T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModal();
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
            Icon(widget.icon, size: 16, color: CustomColors.secondary,),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                _selectedValue != null
                    ? _selectedValue.toString()
                    : widget.hintText,
                style: const TextStyle(
                  color: CustomColors.secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showModal() async {
    final T? newValue = await showModalBottomSheet<T>(
      context: context,
      builder: (BuildContext context) {
        return CustomDropDownModal<T>(
          title: widget.modalTitle,
          items: widget.items,
          onGenderSelected: (selectedGender) {
            setState(() {
              _selectedValue = selectedGender as T?;
              print("CustomDropdown : $_selectedValue");
            });
          },
          selectedGender: _selectedValue, // Pass selected value
        );
      },
    );

    if (newValue != null) {
      setState(() {
        _selectedValue = newValue;
      });
    }
  }
}
