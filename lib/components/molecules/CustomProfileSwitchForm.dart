import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomSwitchButton.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomProfileSwitchForm extends StatefulWidget {
  final String title;
  final String descriptions;
  final bool switchValue;
  final ValueChanged<bool> onSwitchChanged;
  final Widget? additionalField;

  const CustomProfileSwitchForm({
    Key? key,
    required this.title,
    required this.descriptions,
    required this.switchValue,
    required this.onSwitchChanged,
    this.additionalField,
  }) : super(key: key);

  @override
  State<CustomProfileSwitchForm> createState() =>
      _CustomProfileSwitchFormState();
}

class _CustomProfileSwitchFormState extends State<CustomProfileSwitchForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      color: widget.switchValue ? CustomColors.white : Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: CustomColors.black,
                    fontSize: 16),
              ),
              CustomSwitchButton(
                value: widget.switchValue,
                onChanged: (value) {
                  widget.onSwitchChanged(value);
                },
              ),
            ],
          ),
          Text(
            widget.descriptions,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: CustomColors.darkGray,
                fontSize: 12),
          ),
          if (widget.switchValue && widget.additionalField != null)
            widget.additionalField!,
        ],
      ),
    );
  }
}
