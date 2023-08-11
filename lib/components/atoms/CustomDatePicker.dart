import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomDatePicker extends StatefulWidget {
  final String icon;
  final String labelText;
  final DateTime? selectedDate;
  final Function(DateTime)? onDateChanged;

  const CustomDatePicker({
    Key? key,
    required this.icon,
    required this.labelText,
    this.selectedDate,
    this.onDateChanged,
  }) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: CustomColors.quartenary,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(widget.icon, width: 16, height: 16),
          TextButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2023),
                lastDate: DateTime(2030),
              ).then((date) {
                if (date != null) {
                  setState(() {
                    _selectedDate = date;
                  });
                  if (widget.onDateChanged != null) {
                    widget.onDateChanged!(_selectedDate!);
                  }
                }
              });
            },
            child: Text(
              _selectedDate == null
                  ? widget.labelText
                  : DateFormat('dd - MMMM - yyyy').format(_selectedDate!),
              style: const TextStyle(
                fontSize: 16,
                color: CustomColors.secondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
