import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomSwitchButton extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitchButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool _isToggled = false;

  @override
  void initState() {
    super.initState();
    _isToggled = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: _isToggled,
        activeColor: CustomColors.primary,
        onChanged: (value) {
          setState(() {
            _isToggled = value;
          });
          widget.onChanged(value);
        });
  }
}
